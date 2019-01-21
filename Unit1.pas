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
    procedure FormCreate(Sender: TObject);
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
num1:integer;
i,j,k:integer;
num:integer;
begin
        num1 := 0;
        num:=0;
        for i := 0 to length do
        begin
                for j := 0 to length do
                begin
                        for k := 0 to length do
                        begin
                                if ((sticks[num].stickOne.a = 0) and (sticks[num].stickOne.b = 0) and (sticks[num].stickOne.c = 0))then
                                begin
                                        sticksTrue[num1] := sticks[num];
                                        num1 := num1 + 1;
                                end
                                else if (sticks[num].stickOne.a > sticks[num].stickOne.b)then
                                begin
                                        if ((sticks[num].stickOne.b = 0) and (sticks[num].stickOne.c = 0)) then
                                        begin
                                                sticksTrue[num1] := sticks[num];
                                                num1 := num1 + 1;
                                        end
                                        else if (sticks[num].stickOne.b > sticks[num].stickOne.c)then
                                        begin
                                                sticksTrue[num1] := sticks[num];
                                                num1 := num1 + 1;
                                        end;
                                end;
                                num:=num+1;
                        end;
                end;
        end;
        result:= sticksTrue;
end;


procedure TrueResult(i,j,k:integer;sticksTrue: Sticks;sticksResult: Stick);
var
max_nodes, node, root, aa, bb, current, ind:integer;
v, d:char;
begin
        max_nodes := (1 Shl k) - 1; // ????? ??????.
        root := 1 Shl (k - 1); //????? ???????? ???????
        for node := 1 to max_nodes do
        begin
                aa := i;
                bb := j;
                // ????????? ??????? ?????? ???????????? ???????? ???????
                current := root;
                // ????????? ?????? ??????? ??? ???????? ? ?????????? ?????????
                ind := root div 2;
                // ???????? ????? ?????? ???????
                while (node <> current) do
                begin
                    if (node < current) then
                    begin
                        // ??????? ??????? ? ????? ?????????.
                        bb := 6 - aa - bb;
                        current := current - ind; // ??????? ? ?????? ?????????
                    end
                    else
                    begin
                        // ??????? ??????? ? ?????? ?????????
                        aa := 6 - aa - bb;
                        current := current + ind; // ??????? ? ??????? ?????????.
                    end;
                    // ??????? ? ??????? ?????? ??? ???????? ?
                    // ?????????? ????????? ??????????? ? ??? ????
                    ind := ind div 2;
                end;
                 case aa of
    1: v:='A';
    2: v:='B';
    3:v:='C';
    end;
 case bb of
    1: d:='A';
    2: d:='B';
    3:d:='C';
    end;
                case aa of
                        1:
                        v := 'A';


                        2:
                        v := 'B';


                        3:
                        v := 'C';

                end;
                case bb of


                        1:
                        d := 'A';


                        2:
                        d := 'B';


                        3:
                        d := 'C';

                end;
                case v of

                    'A':
                        sticksResult := DeleteDisk(sticksResult, sticksTrue, 1);

                    'B':
                        sticksResult := DeleteDisk(sticksResult, sticksTrue, 2);

                    'C':
                        sticksResult := DeleteDisk(sticksResult, sticksTrue, 3);

                end;
                case d of

                    'A':
                        sticksResult := AddDisk(sticksResult, sticksTrue, 1);

                    'B':
                        sticksResult := AddDisk(sticksResult, sticksTrue, 2);

                    'C':
                        sticksResult := AddDisk(sticksResult, sticksTrue, 3);

                end;
            end;
        end;



        function AddDeleteOrAddDiskNumber(sticksResult:Stick;numStick:integer):integer;
        begin
            case numStick of

                1:
                    case (sticksResult.stickOne.lenght) of

                         1:
                            sticksResult.deleteOrAddDisk := sticksResult.stickOne.a;

                        2:
                            sticksResult.deleteOrAddDisk := sticksResult.stickOne.b;

                        3:
                            sticksResult.deleteOrAddDisk := sticksResult.stickOne.c;

                    end;

                2:
                    case (sticksResult.stickTwo.lenght) of

                        1:
                            sticksResult.deleteOrAddDisk := sticksResult.stickTwo.a;

                        2:
                            sticksResult.deleteOrAddDisk := sticksResult.stickTwo.b;

                        3:
                            sticksResult.deleteOrAddDisk := sticksResult.stickTwo.c;

                    end;

                3:
                    case(sticksResult.stickThree.lenght) of

                        1:
                            sticksResult.deleteOrAddDisk := sticksResult.stickThree.a;

                        2:
                            sticksResult.deleteOrAddDisk := sticksResult.stickThree.b;

                        3:
                            sticksResult.deleteOrAddDisk := sticksResult.stickThree.c;

                    end;

            end;

            result:= sticksResult.deleteOrAddDisk;
        end;
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
    }
}
procedure TForm1.FormCreate(Sender: TObject);
begin
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
end;

end.
