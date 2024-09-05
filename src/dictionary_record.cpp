#include "dictionary_record.h"
#include <sstream>

DictionaryRecord::DictionaryRecord() : word(""), meaning(""), emphasis(0) {}

DictionaryRecord::DictionaryRecord(const std::string& word, const std::string& meaning, int emphasis)
    : word(word), meaning(meaning), emphasis(emphasis) {}

std::string DictionaryRecord::toString() const {
    std::stringstream ss;
    ss << "Word: " << word << ", Meaning: " << meaning << ", Emphasis: " << emphasis;
    return ss.str();
}
