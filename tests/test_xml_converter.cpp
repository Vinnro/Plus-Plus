// tests/test_xml_converter.cpp

#include <gtest/gtest.h>
#include "xml_converter.h"
#include "dictionary_record.h"

TEST(XmlConverterTest, RecordToXmlWithStdString) {
    DictionaryRecord record("apple", "a fruit", 2);
    std::string xml = recordToXml(record, "record");
    std::string expectedXml = "<record>\n  <word>apple</word>\n  <meaning>a fruit</meaning>\n  <emphasis>2</emphasis>\n</record>";
    EXPECT_EQ(xml, expectedXml);
}

TEST(XmlConverterTest, RecordToXmlWithCString) {
    DictionaryRecord record("apple", "a fruit", 2);
    std::string xml = recordToXml(record, "record");
    std::string expectedXml = "<record>\n  <word>apple</word>\n  <meaning>a fruit</meaning>\n  <emphasis>2</emphasis>\n</record>";
    EXPECT_EQ(xml, expectedXml);
}

TEST(XmlConverterTest, RecordToXmlWithCStringAndLength) {
    DictionaryRecord record("apple", "a fruit", 2);
    const char* recordName = "record";
    std::string xml = recordToXml(record, recordName, 6);  // Length of "record"
    std::string expectedXml = "<record>\n  <word>apple</word>\n  <meaning>a fruit</meaning>\n  <emphasis>2</emphasis>\n</record>";
    EXPECT_EQ(xml, expectedXml);
}

TEST(XmlConverterTest, XmlToRecordWithStdString) {
    std::string xml = "<record>\n  <word>apple</word>\n  <meaning>a fruit</meaning>\n  <emphasis>2</emphasis>\n</record>";
    DictionaryRecord record = xmlToRecord(xml);
    EXPECT_EQ(record.word, "apple");
    EXPECT_EQ(record.meaning, "a fruit");
    EXPECT_EQ(record.emphasis, 2);
}

TEST(XmlConverterTest, XmlToRecordWithCString) {
    const char* xml = "<record>\n  <word>apple</word>\n  <meaning>a fruit</meaning>\n  <emphasis>2</emphasis>\n</record>";
    DictionaryRecord record = xmlToRecord(xml);
    EXPECT_EQ(record.word, "apple");
    EXPECT_EQ(record.meaning, "a fruit");
    EXPECT_EQ(record.emphasis, 2);
}
