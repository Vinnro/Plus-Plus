// tests/test_dictionary_record.cpp

#include <gtest/gtest.h>
#include "dictionary_record.h"

TEST(DictionaryRecordTest, DefaultConstructor) {
    DictionaryRecord record;
    EXPECT_EQ(record.word, "");
    EXPECT_EQ(record.meaning, "");
    EXPECT_EQ(record.emphasis, 0);
}

TEST(DictionaryRecordTest, ParameterizedConstructor) {
    DictionaryRecord record("apple", "a fruit", 2);
    EXPECT_EQ(record.word, "apple");
    EXPECT_EQ(record.meaning, "a fruit");
    EXPECT_EQ(record.emphasis, 2);
}

TEST(DictionaryRecordTest, ToString) {
    DictionaryRecord record("apple", "a fruit", 2);
    std::string expectedString = "Word: apple, Meaning: a fruit, Emphasis: 2";
    EXPECT_EQ(record.toString(), expectedString);
}
