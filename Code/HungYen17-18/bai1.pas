program bai1;
uses crt;
const pin = 'bai1.inp';
    pout = 'bai1.out';
var fin, fout : text;
    n , i, s: longint;
    a : array[1..10000] of longint;
begin
    {Đăng kí file}
    assign(fin, pin);
    reset(fin);
    {Đọc file}
    read(fin, n);
    readln(fin, s);
    for i:=1 to n do read(fin ,a[i]);
    
end.