unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls;
type Pos = record
        a,b,c,lenght:integer;
end;
type Stick = record
       stickOne,stickTwo,stickThree:Pos;
        deleteOrAddDisk:integer;
end;
  type Sticks = array of Stick;
type
  TForm1 = class(TForm)
    TreeView1: TTreeView;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
function InitSticks(sticks:Sticks;length:integer):Sticks;
var
num:integer;
i,j,k:integer;
begin
            num := 0;
            for i := 0 to length do
            begin
                for j := 0 to length do
                begin
                    for k := 0 to length do
                    begin
                    {
                        sticks[num].stickOne := new Pos();
                        sticks[num].stickTwo := new Pos();
                        sticks[num].stickThree := new Pos();
                                           }
                        sticks[num].stickOne.a := i;
                        sticks[num].stickOne.b := j;
                        sticks[num].stickOne.c := k;
                        if (i > 0) then
                            sticks[num].stickOne.lenght :=sticks[num].stickOne.lenght + 1;
                        if (j > 0) then
                            sticks[num].stickOne.lenght := sticks[num].stickOne.lenght + 1;
                        if (k > 0) then
                            sticks[num].stickOne.lenght := sticks[num].stickOne.lenght + 1;
                        sticks[num].stickTwo.a := i;
                        sticks[num].stickTwo.b := j;
                        sticks[num].stickTwo.c := k;
                        if (i > 0) then
                            sticks[num].stickTwo.lenght := sticks[num].stickTwo.lenght + 1;
                        if (j > 0) then
                            sticks[num].stickTwo.lenght:=sticks[num].stickTwo.lenght + 1;
                        if (k > 0) then
                            sticks[num].stickTwo.lenght:=sticks[num].stickTwo.lenght + 1;
                        sticks[num].stickThree.a := i;
                        sticks[num].stickThree.b := j;
                        sticks[num].stickThree.c := k;
                        if (i > 0) then
                            sticks[num].stickThree.lenght:=sticks[num].stickThree.lenght+1;
                        if (j > 0) then
                            sticks[num].stickThree.lenght:=sticks[num].stickThree.lenght+1;
                        if (k > 0) then
                            sticks[num].stickThree.lenght:=sticks[num].stickThree.lenght+1;
                        num:=num+1;
                    end;
                end;
            end;

            result:= sticks;
end;

function SortSticksLength(sticks:Sticks;length:integer):integer;
var
lengthNewArray:integer;
i,j,k:integer;
num:integer;
begin
        lengthNewArray := 0;
        for i := 0 to length do
        begin
                for j := 0 to length do
                begin
                        for k := 0 to length do
                        begin
                                if ((sticks[num].stickOne.a = 0) and (sticks[num].stickOne.b = 0) and (sticks[num].stickOne.c = 0)) then
                                begin
                                        lengthNewArray:=lengthNewArray+1;
                                end
                                else if (sticks[num].stickOne.a > sticks[num].stickOne.b)then
                                begin
                                        if ((sticks[num].stickOne.b = 0) and (sticks[num].stickOne.c = 0))then
                                        begin
                                                lengthNewArray:=lengthNewArray+1;
                                        end
                                        else if (sticks[num].stickOne.b > sticks[num].stickOne.c)  then
                                        begin
                                                lengthNewArray:=lengthNewArray+1;
                                        end;
                                end;
                        end;
                end;
        end;
        result:= lengthNewArray;
end;
function SortSticks(sticks,sticksTrue:Sticks;length:integer):Sticks;
var

begin
            int num1 = 0;

            Console.WriteLine("SortSticksLength()\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\");
            for (int i = 0, num = 0; i < length; i++)
            {
                for (int j = 0; j < length; j++)
                {
                    for (int k = 0; k < length; k++, num++)
                    {
                        //?????? ??????? ???? ?????????
                        if (sticks[num].stickOne.a == 0 & sticks[num].stickOne.b == 0 & sticks[num].stickOne.c == 0)
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
                        else if (sticks[num].stickOne.a > sticks[num].stickOne.b)
                        {
                            
                            //???? ?????? ?????? ?????? ???????, ? ????????? ?????
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
                            }//???? ????????? ??????????? ??? ??????
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


        static void TrueResult(int i, int j, int k, Sticks[] sticksTrue, Sticks sticksResult)
        {
            Console.WriteLine("START TRUE RESULT");
            int max_nodes, node, root, aa, bb, current, ind;
            char v = ' ', d = ' ';
            max_nodes = (1 << k) - 1; // ????? ??????.
            root = 1 << (k - 1); //????? ???????? ???????
            for (node = 1; node <= max_nodes; node++)
            {
                aa = i;
                bb = j;
                // ????????? ??????? ?????? ???????????? ???????? ???????
                current = root;
                // ????????? ?????? ??????? ??? ???????? ? ?????????? ?????????
                ind = root / 2;
                // ???????? ????? ?????? ???????
                while (node != current)
                {
                    if (node < current)
                    {
                        // ??????? ??????? ? ????? ?????????.
                        bb = 6 - aa - bb;
                        current = current - ind; // ??????? ? ?????? ?????????
                    }
                    else
                    {
                        // ??????? ??????? ? ?????? ?????????
                        aa = 6 - aa - bb;
                        current = current + ind; // ??????? ? ??????? ?????????.
                    }
                    // ??????? ? ??????? ?????? ??? ???????? ?
                    // ?????????? ????????? ??????????? ? ??? ????
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
                Console.WriteLine("Step = " + node);
                switch(v)
                {
                    case 'A':
                        sticksResult = DeleteDisk(sticksResult, sticksTrue, 1);
                        break;
                    case 'B':
                        sticksResult = DeleteDisk(sticksResult, sticksTrue, 2);
                        break;
                    case 'C':
                        sticksResult = DeleteDisk(sticksResult, sticksTrue, 3);
                        break;
                }
                switch (d)
                {
                    case 'A':
                        sticksResult = AddDisk(sticksResult, sticksTrue, 1);
                        break;
                    case 'B':
                        sticksResult = AddDisk(sticksResult, sticksTrue, 2);
                        break;
                    case 'C':
                        sticksResult = AddDisk(sticksResult, sticksTrue, 3);
                        break;
                }
                PrintSticks(sticksResult);
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
            //PrintSticks(sticks, numDisk);
            length = SortSticksLength(sticks, numDisk);
            sticksTrue = new Sticks[length];
            sticksTrue = SortSticks(sticks, sticksTrue, numDisk);
            PrintSticks(sticksTrue);
            Console.WriteLine("length = " + length);
            sticksResult.stickOne = sticksTrue[length-1].stickOne;
            sticksResult.stickTwo = sticks[0].stickTwo;
            sticksResult.stickThree = sticks[0].stickThree;
            Console.Clear();
            TrueResult(1,3, 3, sticksTrue,sticksResult);
            Console.ReadKey();
        }

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

            if (fromInPos < toInPos)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        //???????? ????? ? ????? ????? ?? ?????? ?????
        //???? ???? ?????? ??? ??????? ???? ?? ??????? ????? ?? ???? ????????? ????????? ?????, ????? ????????????
        static bool CheckPermutationSticks(Sticks sticks, int from, int to)
        {
            switch (from)
            {
                case 0:
                    switch (to)
                    {
                        case 1:
                            return CheckPermutation(sticks.stickOne, sticks.stickTwo);
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
        static int AddDeleteOrAddDiskNumber(Sticks sticksResult, int numStick)
        {
            switch (numStick)
            {
                case 1:
                    switch (sticksResult.stickOne.lenght)
                    {
                        case 1:
                            sticksResult.deleteOrAddDisk = sticksResult.stickOne.a;
                            break;
                        case 2:
                            sticksResult.deleteOrAddDisk = sticksResult.stickOne.b;
                            break;
                        case 3:
                            sticksResult.deleteOrAddDisk = sticksResult.stickOne.c;
                            break;
                    }
                    break;
                case 2:
                    switch (sticksResult.stickTwo.lenght)
                    {
                        case 1:
                            sticksResult.deleteOrAddDisk = sticksResult.stickTwo.a;
                            break;
                        case 2:
                            sticksResult.deleteOrAddDisk = sticksResult.stickTwo.b;
                            break;
                        case 3:
                            sticksResult.deleteOrAddDisk = sticksResult.stickTwo.c;
                            break;
                    }
                    break;
                case 3:
                    switch (sticksResult.stickThree.lenght)
                    {
                        case 1:
                            sticksResult.deleteOrAddDisk = sticksResult.stickThree.a;
                            break;
                        case 2:
                            sticksResult.deleteOrAddDisk = sticksResult.stickThree.b;
                            break;
                        case 3:
                            sticksResult.deleteOrAddDisk = sticksResult.stickThree.c;
                            break;
                    }
                    break;
            }
        
            return sticksResult.deleteOrAddDisk;
        }
        static bool CheckDelete(Pos posTrue, Pos posRes)
        {
            switch(posTrue.lenght)
            {
                case 0:
                    //if(posTrue.a == posRes.a)
                        return true;
                    break;
                case 1:
                    if (posTrue.a == posRes.a)
                        return true;
                    break;
                case 2:
                    if (posTrue.b == posRes.b)
                        return true;
                    break;
                case 3:
                    if (posTrue.c == posRes.c)
                        return true;
                    break;
            }
            return false; 
        }
        static Sticks DeleteUpDisk(Sticks[] sticksTrue, Sticks sticksResult, int numStick)
        {
            for (int i = 0; i < sticksTrue.Length; i++)
            {
                switch (numStick)
                {
                    case 1:
                        if (sticksTrue[i].stickOne.lenght == sticksResult.stickOne.lenght-1)
                        {
                            if (CheckDelete(sticksTrue[i].stickOne, sticksResult.stickOne))
                            {
                                sticksResult.deleteOrAddDisk = AddDeleteOrAddDiskNumber(sticksResult, 1);
                                sticksResult.stickOne = sticksTrue[i].stickOne; 
                            }
                        }
                        break;
                    case 2:
                        if (sticksTrue[i].stickTwo.lenght == sticksResult.stickTwo.lenght - 1)
                        {
                            if (CheckDelete(sticksTrue[i].stickTwo, sticksResult.stickTwo))
                            {
                                sticksResult.deleteOrAddDisk = AddDeleteOrAddDiskNumber(sticksResult, 2);
                                sticksResult.stickTwo = sticksTrue[i].stickTwo;
                            }
                        }
                        break;
                    case 3:
                        if (sticksTrue[i].stickThree.lenght == sticksResult.stickThree.lenght - 1)
                        {
                            if (CheckDelete(sticksTrue[i].stickThree, sticksResult.stickThree))
                            {
                                sticksResult.deleteOrAddDisk = AddDeleteOrAddDiskNumber(sticksResult, 3);
                                sticksResult.stickThree = sticksTrue[i].stickThree;
                            }
                        }
                        break;
                }
            }
            return sticksResult;
        }
        static Sticks DeleteDisk(Sticks sticksResult, Sticks[] sticksTrue, int from)
        {
            sticksResult = DeleteUpDisk(sticksTrue, sticksResult, from);
            return sticksResult;
        }

        static bool CheckAdd(Pos posTrue, Pos posRes)
        {
            switch (posTrue.lenght)
            {
                case 0:
                    if (posTrue.a > posRes.a)
                        return true;
                    break;
                case 1:
                    if (posTrue.a > posRes.a)
                        return true;
                    break;
                case 2:
                    if (posTrue.b > posRes.b)
                        return true;
                    break;
                case 3:
                    if (posTrue.c > posRes.c)
                        return true;
                    break;
            }
            return false;
        }

        static bool CheckAddResult(Pos posTrue, Sticks sticksRes)
        {
            switch (posTrue.lenght)
            {
                case 1:
                    if (posTrue.a == sticksRes.deleteOrAddDisk)
                        return true;
                    break;
                case 2:
                    if (posTrue.b == sticksRes.deleteOrAddDisk)
                        return true;
                    break;
                case 3:
                    if (posTrue.c == sticksRes.deleteOrAddDisk)
                        return true;
                    break;
            }
            return false;
        }

        static Sticks AddUpDisk(Sticks[] sticksTrue, Sticks sticksResult, int numStick)
        {
            for (int i = 0; i < sticksTrue.Length; i++)
            {
                switch (numStick)
                {
                    case 1:
                        if (sticksTrue[i].stickOne.lenght == sticksResult.stickOne.lenght + 1)
                        {
                            if (CheckAdd(sticksTrue[i].stickOne, sticksResult.stickOne))
                            {
                                if (CheckAddResult(sticksTrue[i].stickOne, sticksResult))
                                {
                                    sticksResult.stickOne = sticksTrue[i].stickOne;
                                    return sticksResult;
                                }
                            }
                        }
                        break;
                    case 2:
                        if (sticksTrue[i].stickTwo.lenght == sticksResult.stickTwo.lenght + 1)
                        {
                            if (CheckAdd(sticksTrue[i].stickTwo, sticksResult.stickTwo))
                            {
                                if (CheckAddResult(sticksTrue[i].stickTwo, sticksResult))
                                {
                                    sticksResult.stickTwo = sticksTrue[i].stickTwo;
                                    return sticksResult;
                                }
                            }
                        }
                        break;
                    case 3:
                        if (sticksTrue[i].stickThree.lenght == sticksResult.stickThree.lenght + 1)
                        {
                            if (CheckAdd(sticksTrue[i].stickThree, sticksResult.stickThree))
                            {
                                if (CheckAddResult(sticksTrue[i].stickThree, sticksResult))
                                {
                                    sticksResult.stickThree = sticksTrue[i].stickThree;
                                    return sticksResult;
                                }
                            }
                        }
                        break;
                }
            }
            return sticksResult;
        }
        static Sticks AddDisk(Sticks sticksResult, Sticks[] sticksTrue, int from)
        {
            sticksResult = AddUpDisk(sticksTrue, sticksResult, from);
            return sticksResult;
        }
        static Sticks PermutationSticks(Sticks sticksResult, Sticks[] sticksTrue, int from, int to)
        {
            switch (from)
            {
                case 0:
                    switch (to)
                    {
                        case 1:
                            break;
                        case 2:
                            break;
                    }
                    break;
                case 1:
                    switch (to)
                    {
                        case 0:
                            break;
                        case 2:
                            break;
                    }
                    break;
                case 2:
                    switch (to)
                    {
                        case 0:
                            break;
                        case 1:
                            break;
                    }
                    break;
            }
            return sticksResult;
        }
        static Sticks PermutationSticksResult(Sticks sticksResult, Sticks[] sticksTrue, int from, int to)
        {
            if(CheckPermutationSticks(sticksResult, from,to))
            {
                sticksResult = PermutationSticks(sticksResult, sticksTrue, from, to);
            }
            return sticksResult;
        }
    }
}
end.
