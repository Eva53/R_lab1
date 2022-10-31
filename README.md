# R_lab1

## Лабораторная №1

Файлы с данными содержатся в каталоге data.

### Задание 1.

Файл с данными lab1_e1.csv. Мы видим, что в некоторых значениях числовых переменных добавлен пробел между цифрами. В результате R определит такие переменные как строку (или как фактор по умолчанию). Ваша задача написать функцию fix_data, которая получает на вход набор данных, у которого в некоторых значениях числовых переменных добавлен пробел между цифрами. Ваша задача - избавиться от этого пробела и вернуть числовым переменным их числовой тип. Функция должна возвращать преобразованный набор данных, в котором все числовые переменные будут переведены в числовой тип, при этом те переменные, которые действительно являются строковыми (например, V2 и V4) никак преобразовывать не надо.

### Задание 2.

Файл с данными lab1_e2.Rdata. Допустим, в рамках некоторого медицинского исследования тестировалась эффективность новой вакцины от вируса гриппа. Одной из целей исследования являлось изучить динамику температуры тела пациентов на протяжении недели после вакцинации. Пациенты должны были каждый день приходить на осмотр, где у них измеряли температуру. Каждый из семи дней экспериментатор вносил в таблицу id пациента и его температуру. После окончания исследования выяснилось, что некоторые пациенты не смогли посетить все семь приемов. Кто - то после первого раза больше не приходил на обследование, кто - то пропустил
некоторые дни и т.д. Для чистоты исследования врачам необходимо отобрать из всех пациентов только тех, кто посетили каждый из семи приемов. Все данные хранятся в следующем формате: в списке all_data сохранены семь датафреймов, с двумя колонками:

1. id - закодированное имя пациента
2. temp - значения температуры.

Ваша задача написать функцию get_id, которая получает на вход такого рода список, состоящий из семи датафрэймов. Функция, должна вернуть новый датафрэйм, в котором будут две переменные id и mean_temp - среднее значение температуры за неделю только тех пациентов, которые посетили все семь приемов, то есть id таких пациентов присутствует в каждом из семи датафреймов.
