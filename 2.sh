# Задание 2
#1. Определите имя вашего пользователя.
id
whoami

#2. Определите имена пользователей, работающих с системой в данный момент. Найдите себя в этом списке.
w

#3. Определите имена трех последних пользователей кроме вас, заходивших в систему.
last | head -3

#4. Определите, в каких группах состоит ваш пользователь.
id

#5. Откройте файл /etc/passwd, используя команду more /etc/passwd. Найдите запись с данными вашего пользователя. Проанализируйте все поля записи и опишите их назначение. Используйте справку по файлу (man 5 passwd) для ознакомления со значением всех полей.
root:*:0:0:System Administrator:/var/root:/bin/sh
имя:парольеслиесть:юзер ID: груп ID:коментарий:домашняя дира:оболочка

#6. Выведите на экран информацию о пользователе, используя команду finger.  Попробуйте изменить полное имя пользователя и добавить свой номер телефона при помощи команды chfn.
не работают команды

#7. Договоритесь с соседним пользователем об организации обмена прямыми сообщениями. Обменяйтесь с ним сообщениями в режиме прямого диалога.
#: вводим команду w
#: ищем любого близжайшего соседа по его имени юзера
#: шлем ему сообщение через команду
write b16v7412 pts/1
message
#ctrl+d

#8. Исследуйте возможности блокирования и разблокирования средств приема сообщений.
# запрещение посыла тебе сообщений2yy
mesg n
# разрешение посыла тебе сообщений2yy
mesg y

#9. По договоренности с коллегами обменяйтесь несколькими почтовыми сообщениями.  Проанализируйте возможности обработки поступивших почтовых сообщений.
printf "hello!\n" | mail b16v7412
# у получателя надо ввести команду
mail
# чтобы прочитать это письмо
