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
            public Pos stickOne;
            public Pos stickTwo;
            public Pos stickThree;
        }
        static Sticks[] InitSticks(Sticks[] sticks, int length)
        {
            int num = 0;
            for (int i = 0; i < length; i++)
            {
                for (int j = 0; j < length; j++)
                {
                    for (int k = 0; k < length; k++)
                    {
                        sticks[num].stickOne = new Pos();
                        sticks[num].stickTwo = new Pos();
                        sticks[num].stickThree = new Pos();

                        sticks[num].stickOne.a = i;
                        sticks[num].stickOne.b = j;
                        sticks[num].stickOne.c = k;
                        if (i > 0)
                            sticks[num].stickOne.lenght++;
                        if (j > 0)
                            sticks[num].stickOne.lenght++;
                        if (k > 0)
                            sticks[num].stickOne.lenght++;
                        sticks[num].stickTwo.a = i;
                        sticks[num].stickTwo.b = j;
                        sticks[num].stickTwo.c = k;
                        if (i > 0)
                            sticks[num].stickTwo.lenght++;
                        if (j > 0)
                            sticks[num].stickTwo.lenght++;
                        if (k > 0)
                            sticks[num].stickTwo.lenght++;
                        sticks[num].stickThree.a = i;
                        sticks[num].stickThree.b = j;
                        sticks[num].stickThree.c = k;
                        if (i > 0)
                            sticks[num].stickThree.lenght++;
                        if (j > 0)
                            sticks[num].stickThree.lenght++;
                        if (k > 0)
                            sticks[num].stickThree.lenght++;
                        num++;
                    }
                }
            }

            return sticks;
        }

        static void PrintSticks(Sticks[] sticks, int length)
        {
            int num = 0;
            for (int i = 0; i < length; i++)
            {
                for (int j = 0; j < length; j++)
                {
                    for (int k = 0; k < length; k++)
                    {
                        Console.Write("Sticks[" + (num) + "]\n{\n");
                        Console.Write("stickOne:abc = " + sticks[num].stickOne.a + sticks[num].stickOne.b + sticks[num].stickOne.c + "\n");
                        Console.Write("stickOne:length = " + sticks[num].stickOne.lenght + "\n");
                        Console.Write("stickTwo:abc = " + sticks[num].stickTwo.a + sticks[num].stickTwo.b + sticks[num].stickTwo.c + "\n");
                        Console.Write("stickTwo:length = " + sticks[num].stickTwo.lenght + "\n");
                        Console.Write("stickThree:abc = " + sticks[num].stickThree.a + sticks[num].stickThree.b + sticks[num].stickThree.c + "\n}\n");
                        Console.Write("stickThree:length = " + sticks[num].stickThree.lenght + "\n");
                        num++;
                    }
                }
            }
        }

        static void PrintSticks(Sticks[] sticks)
        {
            Console.Write("PRINT\n");
            for (int i = 0; i < sticks.Length; i++)
            {

                Console.Write("Sticks[" + (i) + "]\n{\n");
                Console.Write("stickOne:abc = " + sticks[i].stickOne.a + sticks[i].stickOne.b + sticks[i].stickOne.c + "\n");
                Console.Write("stickOne:length = " + sticks[i].stickOne.lenght + "\n");
                Console.Write("stickTwo:abc = " + sticks[i].stickTwo.a + sticks[i].stickTwo.b + sticks[i].stickTwo.c + "\n");
                Console.Write("stickTwo:length = " + sticks[i].stickTwo.lenght + "\n");
                Console.Write("stickThree:abc = " + sticks[i].stickThree.a + sticks[i].stickThree.b + sticks[i].stickThree.c + "\n}\n");
                Console.Write("stickThree:length = " + sticks[i].stickThree.lenght + "\n");
            }
        }

        static int SortSticksLength(Sticks[] sticks, int length)
        {
            int lengthNewArray = 0;
            Console.WriteLine("SortSticksLength()\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\");
            for (int i = 0,num = 0; i < length; i++)
            {
                for (int j = 0; j < length; j++)
                {
                    for (int k = 0; k < length; k++, num++)
                    {
                        if(sticks[num].stickOne.a > sticks[num].stickOne.b)
                        {
                            //если занята только первая позиция, а остальные пусты
                            if (sticks[num].stickOne.b == 0 & sticks[num].stickOne.c == 0)
                            {
                                Console.Write("Sticks[" + (num) + "]\n{\n");
                                Console.Write("stickOne:abc = " + sticks[num].stickOne.a + sticks[num].stickOne.b + sticks[num].stickOne.c + "\n");
                                Console.Write("stickOne:length = " + sticks[num].stickOne.lenght + "\n");
                                Console.Write("stickTwo:abc = " + sticks[num].stickTwo.a + sticks[num].stickTwo.b + sticks[num].stickTwo.c + "\n");
                                Console.Write("stickTwo:length = " + sticks[num].stickTwo.lenght + "\n");
                                Console.Write("stickThree:abc = " + sticks[num].stickThree.a + sticks[num].stickThree.b + sticks[num].stickThree.c + "\n}\n");
                                Console.Write("stickThree:length = " + sticks[num].stickThree.lenght + "\n");

                                lengthNewArray++;
                            }//если правильно расположены все ячейки
                            else if(sticks[num].stickOne.b > sticks[num].stickOne.c)
                            {
                                Console.Write("Sticks[" + (num) + "]\n{\n");
                                Console.Write("stickOne:abc = " + sticks[num].stickOne.a + sticks[num].stickOne.b + sticks[num].stickOne.c + "\n");
                                Console.Write("stickOne:length = " + sticks[num].stickOne.lenght + "\n");
                                Console.Write("stickTwo:abc = " + sticks[num].stickTwo.a + sticks[num].stickTwo.b + sticks[num].stickTwo.c + "\n");
                                Console.Write("stickTwo:length = " + sticks[num].stickTwo.lenght + "\n");
                                Console.Write("stickThree:abc = " + sticks[num].stickThree.a + sticks[num].stickThree.b + sticks[num].stickThree.c + "\n}\n");
                                Console.Write("stickThree:length = " + sticks[num].stickThree.lenght + "\n");

                                lengthNewArray++;
                            }
                        }
                    }
                }
            }
            return lengthNewArray;
        }

        static Sticks[] SortSticks(Sticks[] sticks, Sticks[] sticksTrue, int length)
        {
            int num1 = 0;

            Console.WriteLine("SortSticksLength()\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\");
            for (int i = 0, num = 0; i < length; i++)
            {
                for (int j = 0; j < length; j++)
                {
                    for (int k = 0; k < length; k++, num++)
                    {
                        if (sticks[num].stickOne.a > sticks[num].stickOne.b)
                        {
                            //если занята только первая позиция, а остальные пусты
                            if (sticks[num].stickOne.b == 0 & sticks[num].stickOne.c == 0)
                            {
                                Console.Write("Sticks[" + (num) + "]\n{\n");
                                Console.Write("stickOne:abc = " + sticks[num].stickOne.a + sticks[num].stickOne.b + sticks[num].stickOne.c + "\n");
                                Console.Write("stickOne:length = " + sticks[num].stickOne.lenght + "\n");
                                Console.Write("stickTwo:abc = " + sticks[num].stickTwo.a + sticks[num].stickTwo.b + sticks[num].stickTwo.c + "\n");
                                Console.Write("stickTwo:length = " + sticks[num].stickTwo.lenght + "\n");
                                Console.Write("stickThree:abc = " + sticks[num].stickThree.a + sticks[num].stickThree.b + sticks[num].stickThree.c + "\n}\n");
                                Console.Write("stickThree:length = " + sticks[num].stickThree.lenght + "\n");

                                sticksTrue[num1] = sticks[num];
                                num1++;
                            }//если правильно расположены все ячейки
                            else if (sticks[num].stickOne.b > sticks[num].stickOne.c)
                            {
                                Console.Write("Sticks[" + (num) + "]\n{\n");
                                Console.Write("stickOne:abc = " + sticks[num].stickOne.a + sticks[num].stickOne.b + sticks[num].stickOne.c + "\n");
                                Console.Write("stickOne:length = " + sticks[num].stickOne.lenght + "\n");
                                Console.Write("stickTwo:abc = " + sticks[num].stickTwo.a + sticks[num].stickTwo.b + sticks[num].stickTwo.c + "\n");
                                Console.Write("stickTwo:length = " + sticks[num].stickTwo.lenght + "\n");
                                Console.Write("stickThree:abc = " + sticks[num].stickThree.a + sticks[num].stickThree.b + sticks[num].stickThree.c + "\n}\n");
                                Console.Write("stickThree:length = " + sticks[num].stickThree.lenght + "\n");

                                sticksTrue[num1] = sticks[num];
                                num1++;
                            }
                        }
                    }
                }
            }
            return sticksTrue;
        }


        static void TrueResult(int i, int j, int k, int a, int b, int c)
        {
            int max_nodes, node, root, aa, bb, current, ind;
            char v, d;
            max_nodes = 1 << k - 1; // Всего вершин.
            root = 1 << k - 1; //Номер корневой вершины
            for (node = 1; node <= max_nodes; node++)
            {
                aa = i;
                bb = j;
                // начальная позиция поиска соответстует корневой вершине
                current = root;
                // изменение номера вершины при переходе к следующему поддереву
                ind = root / 2;
                // двоичный поиск нужной вершины
                while (node != current)
                {
                    if (node < current)
                    {
                        // искомая вершина в левом поддереве.
                        bb = 6 - aa - bb;
                        current = current - ind; // переход к левому поддереву
                    }
                    else
                    {
                        // искомая вершина в правом поддереве
                        aa = 6 - aa - bb;
                        current = current + ind; // переход к правому поддереву.
                    }
                    // разница в номерах вершин при переходе к
                    // следующему поддереву уменьшается в два раза
                    ind = ind / 2;
                }
                switch (aa)
                {
                    case 1:
                        v = 'A';
                        break;
                    case
                        2:
                        v = 'B';
                        break;
                    case
                        3:
                        v = 'C';
                        break;
                }
                switch (bb)
                {
                    case
                        1:
                        d = 'A';
                        break;
                    case
                        2:
                        d = 'B';
                        break;
                    case
                        3:
                        d = 'C';
                        break;
                }

                switch (bb)
                {
                    case
                        1:
                        a = a - 1;
                        break;
                    case
                        2:
                        b = b - 1;
                        break;
                    case
                        3:
                        c = c - 1;
                        break;
                }
                switch (bb)

                {
                    case
                        1:
                        a = a + 1;
                        break;
                    case
                        2:
                        b = b + 1;
                        break;
                    case
                        3:
                        c = c + 1;
                        break;
                }

                //mas[1, node]:= aa; mas[2, node]:= bb;
                //Unit1.Form1.SG.RowCount:= Unit1.Form1.SG.RowCount + 1;
                //Unit1.Form1.SG.Cells[0, node] := IntToStr(node) + '. Перенести с ' + v + ' на ' + d + '(' + IntToStr(a) + IntToStr(b) + IntToStr(c) + ')';
                //end;
                //num:= node - 1;
            }
        }
        static void Main(string[] args)
        {
            int numDisk = 4;
                int a, b, c;
            int length;
            Sticks[] sticks = new Sticks[(int)Math.Pow(numDisk, numDisk)];
            sticks = InitSticks(sticks, numDisk);
            Sticks[] sticksTrue;
            Sticks sticksResult = new Sticks();
            Console.BufferHeight = 2550;
            Console.BufferWidth = 255;
            PrintSticks(sticks, numDisk);
            length = SortSticksLength(sticks, numDisk);
            sticksTrue = new Sticks[length];
            sticksTrue = SortSticks(sticks, sticksTrue, numDisk);
            PrintSticks(sticksTrue);
            Console.WriteLine("length = " + length);
            Console.ReadKey();
        }
            /* static void Main(string[] args)
             {
                 int numDisk = 3;
                 Sticks[] sticks = new Sticks[(int)Math.Pow(numDisk, numDisk)];
                 for (int i = 0; i < numDisk; i++)
                 {
                     for (int j = 0; j < numDisk; j++)
                     {
                         for (int k = 0; k < numDisk; k++)
                         {

                         }
                     }
                 }
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
                             if ((i != j) & (i != k) & (j != k))
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
             */
            static bool CheckPermutation(Pos from, Pos to)
        {
            char fromInPos;
            char toInPos;

            if (from.c != 0)
            {
                fromInPos = 'c';
            }
            else if (from.b != 0)
            {
                fromInPos = 'b';
            }
            else if (from.a != 0)
            {
                fromInPos = 'a';
            }
            else
            {
                fromInPos = '0';
            }

            if (to.c != 0)
            {
                toInPos = 'c';
            }
            else if (to.b != 0)
            {
                toInPos = 'b';
            }
            else if (to.a != 0)
            {
                toInPos = 'a';
            }
            else
            {
                toInPos = '0';
            }

            if(fromInPos < toInPos)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        //переброс диска с одной палки на другую палку
        //если диск больше чем верхний диск на целевой палке то идём проверять следующую палку, иначе перестановка
        static bool CheckPermutationSticks(Sticks sticks, int from, int to)
        {
            switch (from)
            {
                case 0:
                    switch(to)
                    {
                        case 1:
                            return CheckPermutation(sticks.stickOne,sticks.stickTwo);
                        case 2:
                            return CheckPermutation(sticks.stickOne, sticks.stickThree);
                        default:
                            return false;
                    }
                case 1:
                    switch (to)
                    {
                        case 0:
                            return CheckPermutation(sticks.stickTwo, sticks.stickOne);
                        case 2:
                            return CheckPermutation(sticks.stickTwo, sticks.stickThree);
                        default:
                            return false;
                    }
                case 2:
                    switch (to)
                    {
                        case 0:
                            return CheckPermutation(sticks.stickThree, sticks.stickOne);
                        case 1:
                            return CheckPermutation(sticks.stickThree, sticks.stickTwo);
                        default:
                            return false;
                    }
                default:
                    return false;
            }
        }

    }
}