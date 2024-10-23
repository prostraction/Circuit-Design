# Синтез и исследование комбинационных схем на логических элементах.

Цель лабораторной работы: изучение методов синтеза комбинационных схем на логических элементах заданной серии микросхем и получение навыков в моделировании, макетировании, наладке и экспериментальном исследовании синтезируемых схем.

Дано:

| f1 | f2 | f3 |
| ------------- | ------------- | ------------- |
| 0,2,3,4,5,7,12,13,14,15  | 0,3,6,7,8,11,12,13,14,15  | 0,2,3,4,5,7,8,11,12,13,14,15  |


Решение:

![image](https://github.com/user-attachments/assets/620d27fd-ea9f-4d04-bf7e-b45d864c1102)

⦁	Запишем заданные функции в ДНФ:

![image](https://github.com/user-attachments/assets/563444eb-ea68-4350-8f51-b56fb4c5237c)

Синтезируем одновыходную комбинационные схемы, реализующие функции f1(Х1,Х2,Х3,Х4), f1(Х1,Х2,Х3,Х4) и f1(Х1,Х2,Х3,Х4) на элементах И-НЕ. Для этого:

Произведем минимизацию функций с помощью карты Карно и преобразуем полученное выражения к виду, удобному для реализации на элементах И-НЕ.

- Для f1(X1, X2, X3, X4):

![image](https://github.com/user-attachments/assets/1048d62f-49d8-4143-a887-a04b9c63e436)

- Для f2 (X1, X2, X3, X4):

![image](https://github.com/user-attachments/assets/fb7b2e0d-2cda-4d0c-800a-4464b32cfa25)

- Для f3 (X1, X2, X3, X4):

![image](https://github.com/user-attachments/assets/8e8ce67f-95df-4c18-a010-99b0b556462f)

Построим комбинационную схему, реализующую функции f1(Х1, Х2, Х3, Х4), f1(Х1,Х2,Х3,Х4) и f1(Х1,Х2,Х3,Х4)  на элементах И-НЕ  и инверторах, и определим, на каких логических элементах серии К155 эта схема будет сделана:

![image](https://github.com/user-attachments/assets/d40b2b9a-339d-43a6-8e0d-30cfc0072022)

Результаты симуляций:

- f1 functional:

![image](https://github.com/user-attachments/assets/dd14eb58-e8b9-4545-9e22-c58c9b888f3d)

- f1 timing:
 
![image](https://github.com/user-attachments/assets/52243974-84d1-4681-a453-4019ab7c64a0)

- f2, f3 functional:

![image](https://github.com/user-attachments/assets/5d9ad22e-7aef-456d-a369-629cb6ed4803)

- f2, f3 timing:

![image](https://github.com/user-attachments/assets/52f8483c-f076-4ca7-b5fa-2cb4d614efdd)
