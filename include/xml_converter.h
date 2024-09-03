// include/xml_converter.h

#ifndef XML_CONVERTER_H
#define XML_CONVERTER_H

#include "dictionary_record.h"
#include <string>

std::string recordToXml(const DictionaryRecord& record, const std::string& recordName);

DictionaryRecord xmlToRecord(const std::string& xmlString);

#endif // XML_CONVERTER_H
