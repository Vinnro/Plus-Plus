// src/xml_converter.cpp

#include "xml_converter.h"
#include <sstream>
#include "dictionary_record.h"
#include <stdexcept>

std::string recordToXml(const DictionaryRecord& record, const std::string& recordName) {
    std::stringstream ss;
    ss << "<" << recordName << ">\n";
    ss << "  <word>" << record.word << "</word>\n";
    ss << "  <meaning>" << record.meaning << "</meaning>\n";
    ss << "  <emphasis>" << record.emphasis << "</emphasis>\n";
    ss << "</" << recordName << ">";
    return ss.str();
}

DictionaryRecord xmlToRecord(const std::string& xmlString) {
    std::string word, meaning;
    int emphasis = 0;

    size_t wordStart = xmlString.find("<word>") + 6;
    size_t wordEnd = xmlString.find("</word>");
    if (wordStart != std::string::npos && wordEnd != std::string::npos) {
        word = xmlString.substr(wordStart, wordEnd - wordStart);
    }

    size_t meaningStart = xmlString.find("<meaning>") + 9;
    size_t meaningEnd = xmlString.find("</meaning>");
    if (meaningStart != std::string::npos && meaningEnd != std::string::npos) {
        meaning = xmlString.substr(meaningStart, meaningEnd - meaningStart);
    }

    size_t emphasisStart = xmlString.find("<emphasis>") + 10;
    size_t emphasisEnd = xmlString.find("</emphasis>");
    if (emphasisStart != std::string::npos && emphasisEnd != std::string::npos) {
        emphasis = std::stoi(xmlString.substr(emphasisStart, emphasisEnd - emphasisStart));
    }

    return DictionaryRecord(word, meaning, emphasis);
}
