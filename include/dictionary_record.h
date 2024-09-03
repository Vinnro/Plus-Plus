// include/dictionary_record.h

#ifndef DICTIONARY_RECORD_H
#define DICTIONARY_RECORD_H

#include <string>

struct DictionaryRecord {
    std::string word;     
    std::string meaning;
    int emphasis;          


    DictionaryRecord() : word(""), meaning(""), emphasis(0) {}

    DictionaryRecord(const std::string& word, const std::string& meaning, int emphasis);

    std::string toString() const;
};

#endif // DICTIONARY_RECORD_H
