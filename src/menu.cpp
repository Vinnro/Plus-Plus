#include "xml_converter.h"

#include <iostream>
#include <string>
#include <stdexcept>

void runDialog() {
    int choice;
    DictionaryRecord record;
    std::string recordName;

    std::cout << "Введите слово: ";
    std::cin >> record.word;
    std::cout << "Введите толкование: ";
    std::cin.ignore();
    std::getline(std::cin, record.meaning);
    std::cout << "Введите номер ударной гласной: ";
    std::cin >> record.emphasis;

    while (true) {
        std::cout << "\nМеню:\n";
        std::cout << "1. Преобразовать DictionaryRecord в XML (std::string)\n";
        std::cout << "2. Преобразовать DictionaryRecord в XML (const char*)\n";
        std::cout << "3. Преобразовать DictionaryRecord в XML (const char* + size_t)\n";
        std::cout << "4. Преобразовать XML строку в DictionaryRecord (std::string)\n";
        std::cout << "5. Преобразовать XML строку в DictionaryRecord (const char*)\n";
        std::cout << "6. Выйти\n";
        std::cout << "Выберите действие: ";
        std::cin >> choice;

        switch (choice) {
            case 1: {
                std::cout << "Введите название записи (std::string): ";
                std::cin >> recordName;
                std::string xmlString = recordToXml(record, recordName);
                std::cout << "Результат XML:\n" << xmlString << "\n";
                break;
            }
            case 2: {
                char recordName[50];
                std::cout << "Введите название записи (const char*): ";
                std::cin >> recordName;
                std::string xmlString = recordToXml(record, recordName);
                std::cout << "Результат XML:\n" << xmlString << "\n";
                break;
            }
            case 3: {
                char recordName[50];
                size_t length;
                std::cout << "Введите название записи (const char*): ";
                std::cin >> recordName;
                std::cout << "Введите длину названия записи: ";
                std::cin >> length;
                std::string xmlString = recordToXml(record, recordName, length);
                std::cout << "Результат XML:\n" << xmlString << "\n";
                break;
            }
            case 4: {
                std::string xmlString, line;
                std::cout << "Введите XML строку (введите 'END' для завершения ввода):\n";
                std::cin.ignore(); 

                while (std::getline(std::cin, line)) {
                    if (line == "END") {
                        break;
                    }
                    xmlString += line + "\n";
                }

                try {
                    DictionaryRecord newRecord = xmlToRecord(xmlString);
                    std::cout << "Результат:\n" << newRecord.toString() << "\n";
                } catch (const std::runtime_error& e) {
                    std::cout << "Ошибка при обработке XML: " << e.what() << "\n";
                }
                break;
            }
            case 5: {
                std::string xmlString, line;
                std::cout << "Введите XML строку (введите 'END' для завершения ввода):\n";
                std::cin.ignore(); 

                while (std::getline(std::cin, line)) {
                    if (line == "END") {
                        break;
                    }
                    xmlString += line + "\n";
                }

                try {
                    DictionaryRecord newRecord = xmlToRecord(xmlString.c_str());
                    std::cout << "Результат:\n" << newRecord.toString() << "\n";
                } catch (const std::runtime_error& e) {
                    std::cout << "Ошибка при обработке XML: " << e.what() << "\n";
                }
                break;
            }
            case 6:
                std::cout << "Выход из программы.\n";
                return;
            default:
                std::cout << "Неверный выбор, попробуйте снова.\n";
                break;
        }
    }
}
