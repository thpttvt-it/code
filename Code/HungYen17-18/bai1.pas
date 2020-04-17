{
    Tính tổng (7 điểm).
	Cho dãy số gồm N số nguyên dương a1, a2, …, aN và giá trị K. Hãy đếm các cặp phần tử ai + aj = K (i < j).
Dữ liệu vào: cho bởi File SUMX.INP gồm hai dòng:
    • Dòng đầu tiên ghi giá trị N và K (2 ≤ N ≤ 105, K ≤ 105).
    • Dòng hai ghi giá trị của dãy a1, a2, …, aN (1 ≤ ai ≤ 105).
Kết quả: ghi ra file SUMX.OUT là số lượng cần tìm

    Coder: Võ Quốc Thịnh
}

program bai1;
uses crt;
const pin = 'bai1.inp';
    pout = 'bai1.out';
var fin, fout : text;
    n , i, s, out, j: longint;
    a : array[1..10000] of longint;
begin
    {Đăng kí file}
    assign(fin, pin);
    reset(fin);
    {Đọc file}
    read(fin, n);
    readln(fin, s);
    for i:=1 to n do read(fin ,a[i]);
        close(fin);
    {Bắt đầu duyệt để tìm kết quả}
    out := 0;
    for i:=1 to n do
    begin
        {Do điều kiện của đề là j > i nên phải i + 1}
        for j:= (i+1) to n do 
        begin
            if (a[i] + a[j] = s) then out := out +1;
        end;
    end;
    {Ghi ra kết quả}
    assign(fout, pout);
    rewrite(fout);
    writeln(fout, out);
    close(fout);
end.