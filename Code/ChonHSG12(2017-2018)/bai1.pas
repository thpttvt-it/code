program bai1;
uses crt, sysutils;
const pin = 'bai1.inp';
    pout = 'bai1.out';
var fin, fout : text;
    i, n , j, dem: longint;
    a, ps, pe :array[1..10000] of longint;
function ss (a, b: longint):boolean;
begin
    if (a > b) then exit(true); exit(false);
end;
begin
    assign(fin, pin);
    reset(fin);
    n := 1;
    while (not eof(fin)) do 
        begin
            read(fin ,a[n]);
            n := n +1;
        end;
    n := n -1;
    dem := 1;
    i := 1;
    j := 2;
    while (i < n) do 
        begin
            while (a[j] > a[j-1]) do
                begin
                    j := j +1;
                end;
            writeln(i);
            writeln(j -1);
            i := j -1;
            dem := dem +1;
        end;
end.