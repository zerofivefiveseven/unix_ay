#Задание 3
#1. Определите полное имя вашего домашнего каталога, объясните структуру абсолютного пути к каталогу.
echo $HOME

#2. Выведите на экран содержимое корневого каталога системы. Опишите назначение основных каталогов системы.
ls /

#3. Выведите на экран информацию о вашем пользователе в файле /etc/passwd, используя команду grep.
grep b16v7412 /etc/passwd

#4. Выведите «длинный список» файлов (в том числе скрытых), содержащихся в вашем домашнем каталоге. Опишите, что обозначают все столбцы списка.
ls -la ~
# права доступа |количество файлов в директории | пользователь | группа | размер | дата создания | имя файла
# -rw-r--r--     1 amoshi  staff        2982 Jun 14  2017 file.txt

#5. Изучите самостоятельно для каких целей служат спецсимволы ^, ! и фигурные скобки ({}), создайте файлы, которые можно использовать для проверки работы этих спецсимволов.
# ^ пролистать ранее введенные команды вверх
# ! выполнить предыдущую команду
# {} - сгенерировать массив от n до m:
$ echo {00..11}
0 1 2 3 4 5 6 7 8 9 10 11
$ echo {a..e}
a b c d e
$

#1. Создайте каталоги ~/html и ~/archive.
mkdir ~/html ~/archive

#2. Выведите на экран содержимое каталога /usr/share. Ограничьте длину результата 5 строками. Запишите результат работы команды в файл index.html в каталоге с сайтом.
ls /usr/share
ls /usr/share | head -5 > ~/html/index.html

#3. Проверьте количество строк в файле index.html. Выведите на экран содержимое файла index.html.
cat -n ~/html/index.html

#4. Переименуйте каталог html в html_public.
mv html html_public

#5. Создайте копию файла index.html в ~/archive.
cp html_public/index.html ~/archive

#6. Выведите список файлов в домашнем каталоге, отсортировав их в порядке, обратном алфавитному. Сохраните вывод в файл ~/html_public/home.html.
ls ~ | sort -r > ~/html_public/home.html

#7. Скопируйте в домашний каталог файл home.html.
cp ~/html_public/home/html ~/

#8. Создайте символьную ссылку к файлу index.html с именем ~/html_public/link_s.html и жесткую ссылку к этому же файлу с именем ~/html_public/link_h.html.
ln -s ../index.html ~/html_public/link_s.html
ln ~/index.html ~/html_public/link_h.html

#9. Удалите файл index.html так, чтобы ссылка link_s.html оказалась «сломанной».  Попробуйте открыть содержимое файлов link_s.html и link_h.html.  Прокомментируйте результат.
rm index.html
cat ~/html_public/link_s.html
cat ~/html_public/link_h.html

#10. Определите место, занимаемое в системе вашим сайтом (каталогами html_public и archive).
du html_public archive