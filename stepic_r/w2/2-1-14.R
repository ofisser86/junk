# Опять воспользуемся данными diamonds из библиотеки ggplot2. При помощи критерия Хи - квадрат проверьте гипотезу о взаимосвязи цены (price) и каратов (carat) бриллиантов. Для этого сначала нужно перевести эти количественные переменные в формат пригодный для Хи - квадрат. Создайте две новые переменные в данных diamonds:

# factor_price - где будет 1, если значение цены больше либо равно чем среднее, и 0, если значение цены ниже среднего цены по выборке.

# factor_carat - где будет 1, если число карат больше либо равно чем среднее,  и 0, если ниже среднего числа карат по выборке.

# Важный момент - на больших данных цикл for() работает довольно медленно, постарайтесь решить эту задачу без его использования!

# Используя эти шкалы при помощи Хи - квадрат проверьте исходную гипотезу. Запишите результаты выполнение теста в переменную. Выведите на печать значение критерия  Хи - квадрат  при помощи команды print()

# Пример перевода количественной шкалы в номинативную:

# > x <- (1, 2, 3, 5, 6, 7) # mean(x) = 4
# > factor_x <- (0, 0, 0, 1, 1, 1)