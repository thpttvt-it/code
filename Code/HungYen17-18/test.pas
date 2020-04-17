function tinh(u:integer):integer;
begin 
        if (k mod u)=0 then 
                tinh:=u else tinh:=k mod u; 
                end; 
procedure dem; 
var i,j,next,k1,sl:longint;
begin 
        fillchar(a,sizeof(a),0); a[1]:=1; 
        for i:=2 to n do begin j:=tinh(i); a:=(j+a[i-1]-1) mod (i-1); if a=0 then a:=i-1; if a>=j then inc(a); end; end;
