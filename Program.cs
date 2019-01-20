using System;
using System.Collections.Generic;
using System.Linq;

namespace ConsoleApp7
{
    class Program
    {
        struct Pos
        {
            public int a;
            public int b;
            public int c;
            public int lenght;//кол-во дисков на палке
        }
        struct Sticks
        {
            public Pos[] stickOne;
            public Pos[] stickTwo;
            public Pos[] stickThree;
        }
        static void Main(string[] args)
        {
            int numDisk = 3;
            Pos[] arr = new Pos[(int)Math.Pow(numDisk, numDisk)];
            Pos[] arrStick = new Pos[3];
            for (int i = 0; i < numDisk; i++)
            {
                int lenght = 0;
                for (int j = 0; j < numDisk; j++)
                {
                    for (int k = 0; k < numDisk; k++)
                    {
                        arr[i + j + k].a = i;
                        arr[i + j + k].b = j;
                        arr[i + j + k].c = k;

                        lenght++;
                    }
                    Console.Write("/////////////////////////////////\n");
                }
                Console.Write("Lenght = " + lenght + "\n\n");
            }
            for (int i = 0; i < numDisk; i++)
            {
                for (int j = 0; j < numDisk; j++)
                {
                    for (int k = 0; k < numDisk; k++)
                    {
                        Console.Write("i =  " + i + ")" + arr[i + j + k].a + "," + arr[i + j + k].b + "," + arr[i + j + k].c + "\n");
                    }
                    Console.Write("/////////////////////////////////\n");
                }
            }
            int lenghtTrueArr = 0;
            for (int i = 0; i < numDisk; i++)
            {
                for (int j = 0; j < numDisk; j++)
                {
                    for (int k = 0; k < numDisk; k++)
                    {
                        if ((arr[i + j + k].a != arr[i + j + k].b) & (arr[i + j + k].a != arr[i + j + k].c) & (arr[i + j + k].c != arr[i + j + k].b))
                        {
                            lenghtTrueArr++;
                        }
                    }
                }
            }
            Pos[] arrTrue = new Pos[lenghtTrueArr];
            lenghtTrueArr = 0;
            for (int i = 0; i < numDisk; i++)
            {
                for (int j = 0; j < numDisk; j++)
                {
                    for (int k = 0; k < numDisk; k++)
                    {
                        if ((i != j) & (i != k) & (j!=k))
                        {
                            arrTrue[lenghtTrueArr].a = i;
                            arrTrue[lenghtTrueArr].b = j;
                            arrTrue[lenghtTrueArr].c = k;
                            lenghtTrueArr++;
                        }
                    }
                }
            }

            Console.WriteLine("\nTRUE\n");
            for (int i = 0; i < lenghtTrueArr; i++)
            {
                Console.Write("i =  " + i + ")" + arrTrue[i].a + "," + arrTrue[i].b + "," + arrTrue[i].c + "\n");
            }
            lenghtTrueArr = 0;
            for (int i = 0; i < numDisk; i++)
            {
                for (int j = 0; j < numDisk; j++)
                {
                    for (int k = 0; k < numDisk; k++)
                    {
                        if ((i != j) & (i != k) & (j != k))
                        {
                            if (i > j & j > k)
                            {
                                arrTrue[lenghtTrueArr].a = i;
                                arrTrue[lenghtTrueArr].b = j;
                                arrTrue[lenghtTrueArr].c = k;
                                lenghtTrueArr++;
                            }
                        }
                    }
                }
            }
            arrTrue = new Pos[lenghtTrueArr];
            lenghtTrueArr = 0;
            for (int i = 0; i < numDisk; i++)
            {
                for (int j = 0; j < numDisk; j++)
                {
                    for (int k = 0; k < numDisk; k++)
                    {
                        if ((i != j) & (i != k) & (j != k))
                        {
                            if (i > j & j > k)
                            {
                                arrTrue[lenghtTrueArr].a = i;
                                arrTrue[lenghtTrueArr].b = j;
                                arrTrue[lenghtTrueArr].c = k;
                                lenghtTrueArr++;
                            }
                        }
                    }
                }
            }
            Console.WriteLine("\n ROOT \n");
            for (int i = 0; i < lenghtTrueArr; i++)
            {
                Console.Write("i =  " + i + ")" + arrTrue[i].a + "," + arrTrue[i].b + "," + arrTrue[i].c + "\n");
            }

            for (int i = 0; i < numDisk; i++)
            {
                for (int j = 0; j < numDisk; j++)
                {
                    for (int k = 0; k < numDisk; k++)
                    {
                    }
                }
            }
            Console.ReadKey();
        }
        //переброс диска с одной палки на другую палку
        //если диск больше чем верхний диск на целевой палке то идём проверять следующую палку, иначе перестановка
        static void Permutation()
        {
              
        }

    }
}

/*
 * 1,1
 * 1,2
 * 
 * 2,1
 * 2,2
 * 
 * 
 * 1,1,1 по горизонтали это строка, собственно говоря одна размерность = одна строка
 * 1,1,2
 * 1,1,3
 * 
 * 1,2,1
 * 1,2,2
 * 1,2,3
 * 
 * 1,3,1
 * 1,3,2
 * 1,3,3
 * 
 * 1,1,1,1
 * 1,1,1,2
 * .....
 * 1,1,2,1
 * ......
 * 1,1,4,1
 * .....
 * 1,2,4,4
 * ....
 * 1,3,4,4
 * 
 * 1,4,4,4
 * 
 * 4,4,4,4
 * 
 */
