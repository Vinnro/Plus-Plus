#ifndef XML_CONVERTER_H
#define XML_CONVERTER_H

#include "dictionary_record.h"
#include <string>

std::string recordToXml(const DictionaryRecord& record, const std::string& recordName);

std::string recordToXml(const DictionaryRecord& record, const char* recordName);

std::string recordToXml(const DictionaryRecord& record, const char* recordName, size_t length);

DictionaryRecord xmlToRecord(const std::string& xmlString);

DictionaryRecord xmlToRecord(const char* xmlString);

#endif // XML_CONVERTER_H
