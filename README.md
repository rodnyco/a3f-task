# Тестовое задание A3F
## Задание
1. Спроектировать структуру таблиц(ы) для хранения Контактов, которые могут иметь друзей из этого же списка Контактов (в рамках задачи достаточно хранить только Имя Контакта). Если Контакт 2 является другом Контакта 1, это не означает, что Контакт 1 является другом Контакта 2.
1.1. Написать запрос sql, отображающий список Контактов, имеющих больше 5 друзей.
1.2. Написать запрос sql, отображающий все пары Контактов, которые дружат друг с другом. Исключить дубликаты.

Для реализации создал две таблицы. В contacts храняться пользователи, в contact_friends связи друзей между контактами. 
