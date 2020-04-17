{
    Bài 3: Hoán vị (6 điểm)
	Tương truyền rằng Josephus và bốn mươi chiến sĩ bị người La Mã bao vây trong một hang động. Họ quyết định tự vẫn chứ không chịu bị bắt. 41 người đứng thành vòng tròn và bắt đầu đếm theo một chiều vòng tròn, cứ người nào đếm đến 3 thì phải tự vẫn và người kế tiếp bắt đầu đếm từ 1. Josephus không muốn chết và đã chọn được một vị trí mà ông ta cùng với một người nữa là hai người sống sót cuối cùng theo quy luật này. Hai người sống sót sau đó đã đầu hàng và gia nhập quân La Mã (Josephus sau đó chỉ nói rằng đó là sự may mắn, hay “bàn tay của Chúa” mới giúp ông và người kia sống sót).
	Có rất nhiều truyền thuyết và tên gọi khác nhau về bài toán Josephus. Trong toán học, người ta phát biểu bài toán dưới dạng một trò chơi: Cho n người đứng quanh vòng tròn theo chiều kim đồng hồ đánh số từ 1 đến n. Họ bắt đầu đếm từ người thứ nhất theo chiều kim đồng hồ, người nào đếm đến m (m < n) thì bị loại khỏi vòng và người kế tiếp bắt đầu đếm từ 1. Trò chơi tiếp diễn cho tới khi vòng tròn chỉ còn lại 1 người. Nếu ta xếp số hiệu của n người này theo thứ tự họ bị loại khỏi vòng sẽ được một hoán vị (j1, j2, … , jn) của dãy số (1,2, … n) gọi là hoán vị Josephus(n,m)
	Ví dụ với n = 7, m = 3, hoán vị Josephus sẽ là (3,6,2,7,5,1,4). Bài toán đặt ra là cho trước hai số n, m hãy xác định hoán vị Josephus(n,m).
Dữ liệu vào: Cho bởi file JOSEPHUS.INP gồm:
	Hai số nguyên dương n, m ≤ 105.
Kết quả: Ghi ra file JOSEPHUS.OUT gồm:
	Hoán vị Josephus(n,m), mỗi số phân cách nhau bởi một dấu cách.

    Coder: Võ Quốc Thịnh
}
program bai3;
uses crt;
const 
    pin = 'bai3.inp';
    pout = 'bai3.out';
var 
    fin, fout : text;
    i, n, m, tg, count: longint;
    out, del: array[1..10000] of longint;
{Thủ tục nay để xóa một dữ liệu khỏi mảng A với tọa độ locate}
function check(input : longint): boolean;
var check_i : longint;
begin
    for i:=1 to count do 
        if (del[check_i] = input) then exit(false);
    exit(true);
end;
begin
    assign(fin, pin);
    reset(fin);
    {Đọc dữ liệu}
    read(fin, n);
    read(fin, m);
    close(fin);
    tg := n;
    count := 1;
    
end.