--Если бы мы хотели вычислить n

---е число Фибоначчи на императивном языке программирования, мы бы делали это с помощью двух переменных и цикла, обновляющего эти переменные:

--def fib(n):
--  a, b = 0, 1
--  for i in [1 .. n]:
--    a, b = b, a + b
--  return a

--С точки зрения Хаскеля, такую конструкцию удобно представлять себе как вычисление с состоянием. Состояние в данном случае — это два целочисленных значения.

--Императивный алгоритм действует очень просто: он совершает n

-- шагов, каждый из которых некоторым образом изменяет текущее состояние. Первым делом, реализуйте функцию fibStep, изменяющую состояние таким же образом, как и один шаг цикла в императивном алгоритме:

--GHCi> execState fibStep (0,1)
--(1,1)
--GHCi> execState fibStep (1,1)
--(1,2)
--GHCi> execState fibStep (1,2)
--(2,3)

--После этого останется лишь применить этот шаг n
--раз к правильному стартовому состоянию и выдать ответ. Реализуйте вспомогательную функцию execStateN, которая принимает число шагов n, вычисление с состоянием и начальное состояние, запускает вычисление n

--раз и выдает получившееся состояние (игнорируя сами результаты вычислений). Применяя эту функцию к fibStep, мы сможем вычислять числа Фибоначчи:

--fib :: Int -> Integer
--fib n = fst $ execStateN n fibStep (0, 1)

fibStep :: State (Integer, Integer) ()
fibStep = do
    (a, b) <- get
    put (b, a + b)

execStateN :: Int -> State s a -> s -> s
execStateN n m = execState (replicateM_ n m)