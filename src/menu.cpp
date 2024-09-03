// src/menu.cpp

#include "menu.h"
#include "xml_converter.h"
#include <iostream>
#include <string>

void runDialog() {
    while (true) {
        std::cout << "Выберите действие:\n";
        std::cout << "1. Ввести новую запись\n";
        std::cout << "2. Преобразовать запись в XML\n";
        std::cout << "3. Преобразовать XML в запись\n";
        std::cout << "4. Выход\n";
        std::cout << "Ваш выбор: ";

        int choice;
        std::cin >> choice;

        if (choice == 4) break;

        if (choice == 1) {
            DictionaryRecord record;
            std::cout << "Введите слово: ";
            std::cin >> record.word;
            std::cin.ignore();
            std::cout << "Введите толкование: ";
            std::getline(std::cin, record.meaning);
            std::cout << "Введите номер ударной гласной: ";
            std::cin >> record.emphasis;

            std::cout << "Новая запись создана: " << record.toString() << "\n";
        } else if (choice == 2) {
            DictionaryRecord record;
            std::string recordName;
            std::cout << "Введите имя записи: ";
            std::cin >> recordName;
            std::cin.ignore();
            std::cout << "Введите слово: ";
            std::cin >> record.word;
            std::cin.ignore();
            std::cout << "Введите толкование: ";
            std::getline(std::cin, record.meaning);
            std::cout << "Введите номер ударной гласной: ";
            std::cin >> record.emphasis;

            std::string xml = recordToXml(record, recordName);
            std::cout << "XML представление:\n" << xml << "\n";
        } else if (choice == 3) {
            std::string xml;
            std::cout << "Введите XML строку: ";
            std::cin.ignore();
            std::getline(std::cin, xml);

            DictionaryRecord record = xmlToRecord(xml);
            std::cout << "Преобразованная запись: " << record.toString() << "\n";
        } else {
            std::cout << "Неверный выбор. Пожалуйста, попробуйте снова.\n";
        }
    }

    std::cout << "Программа завершена.\n";
}
