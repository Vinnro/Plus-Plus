#ifndef DICTIONARY_RECORD_H
#define DICTIONARY_RECORD_H

#include <string>

/**
 * @brief Структура записи в словаре.
 *
 * Содержит слово, его толкование и ударение.
 */
struct DictionaryRecord {
    std::string word;      /**< Слово (до 20 символов) */
    std::string meaning;   /**< Толкование слова */
    int emphasis;          /**< Ударение (номер ударной гласной) */

    /**
     * @brief Конструктор по умолчанию.
     */
    DictionaryRecord();

    /**
     * @brief Конструктор с параметрами.
     *
     * @param word Слово.
     * @param meaning Толкование.
     * @param emphasis Номер ударной гласной.
     */
    DictionaryRecord(const std::string& word, const std::string& meaning, int emphasis);

    /**
     * @brief Возвращает строковое представление записи.
     *
     * @return std::string Строка с информацией о записи.
     */
    std::string toString() const;
};

#endif // DICTIONARY_RECORD_H
