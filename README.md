## Сложение чисел с плавающей запятой

В модуле Addition-Subtraction реализована логика сложения и выитания чисел с плавающей запятой.
Сложение происходит, если на вход AddBar_Sub приходит 0.
Для того чтобы сложить два числа, первое слагаемое обязательно должно быть не меньше второго, для этого в данном модуле реализована проверка 2х операндов.
*assign {Comp_enable,operand_a,operand_b} = (a_operand[30:0] < b_operand[30:0]) ? {1'b1,b_operand,a_operand} : {1'b0,a_operand,b_operand};*
Далее производится проверка на того, чтобы в экспоненте не было записано число 255 (все единицы), если оно записано, значит этот операнд является + или - бесконечностью, в зависимости от знакого бита и в результат надо также записать + или - бесконечность соответсвенно.
После происходит нахождение разности между экспонентами и сдвиг операнда с меньшей экспонентой на нужное количество бит вправо.
Далее происходит сложение мантис и запись в результат.

В разработанном мной модуле отсутсвует задержка, сложение чисел происходит сразу, как флаг valid устанавливается в 1.