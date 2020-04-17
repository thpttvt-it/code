{
    Bài 2: Bán hàng qua mạng (7 điểm)
	Trang là một học sinh THPT trường X. Là một học sinh nhưng em có sở thích và niềm đam mê trong lĩnh vực kinh doanh qua mạng. Mặt hàng em bán là bút bi. Qua một thời gian kinh doanh, đơn hàng ngày càng tăng, số lượng bút bi nhập về ngày càng nhiều. Để có thể nhanh chóng giao hàng cho khách, Trang muốn sắp xếp những chiếc bút theo màu sắc. Trang có dãy bút bi gồm các màu xanh, tím, hồng. Vì số lượng bút là rất lớn và không có nhiều thời gian nên Trang muốn nhờ các bạn học sinh giỏi bộ môn Tin học tham gia kỳ thi chọn học sinh giỏi cấp tỉnh năm 2018 sắp xếp giúp. Em hãy giúp Trang sắp xếp lại dãy bút bi theo quy luật Xanh - Hồng - Tím.
Dữ liệu vào: Cho bởi file SORT.INP gồm 2 dòng:
    • Dòng 1: Ghi số N là số lượng bút bi (1 ≤ N ≤ 106).
    • Dòng 2: Gồm N kí tự mô tả dãy bút bi ( X – Xanh, T – Tím, H – Hồng), các màu được phân cách nhau bởi một dấu cách.
    Kết quả: Ghi ra file SORT.OUT kết quả của dãy sau khi đã được sắp xếp đúng thứ tự, các kí tự được phân cách bởi một dấu cách.

    Coder: Võ Quốc Thịnh
}
program bai2;
uses crt;
const pin = 'bai2.inp';
    pout = 'bai2.out';
var fin, fout: text;
    n, i, count: longint;
    a, out: array[1..100000] of char;
    tg : char;
begin
    {Kết nối tệp}
    assign(fin, pin);
    reset(fin);
    {đọc}
    readln(fin,n);
    for i:= 1 to n do 
        begin
            read(fin, a[i]);
            {Dòng này đêr xóa bỏ dấu cách}
            read(fin, tg);
        end;
    close(fin);
    {Vòng lặp đợt 1: Lọc ra X}
    count :=1;
    for i:=1 to n do 
        if (a[i] = 'X') then 
            begin
                out[count] := 'X';
                count := count +1;
            end;
    for i:=1 to n do 
        if (a[i] = 'H') then 
            begin
                out[count] := 'H';
                count := count +1;
            end;
    for i:=1 to n do 
        if (a[i] = 'T') then 
            begin
                out[count] := 'T';
                count := count +1;
            end;
    {Xuất kết quả}
    assign(fout, pout);
    rewrite(fout);
    for i:=1 to n do 
        begin
            write(fout, out[i]);
            write(fout, ' ');
        end;
    close(fout);
end.
