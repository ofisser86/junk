# Создайте и напечатайте (с помощью функции print) массив класса np.ndarray ширины 4 и высоты 3 с двойками на главной диагонали и единицами на первой диагонали над главной, т.е. воплощение матрицы
# ⎛⎝⎜200120012001⎞⎠⎟

# Обратите внимание на то, что мы используем Python 3, где print() принимает аргументы в скобках.

# Подсказка: простым путём может быть использование сложения и умножения на константу.

import numpy as np
print(np.array([[2,1,0,0], [0,2,1,0], [0,0,2,1]]))