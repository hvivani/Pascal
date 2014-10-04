{ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ» 
 º ERRCUIL - Algoritmo de Validacion º 
 º de CUIL - CUIT                    º 
 º Desarrollado por: H. Vivani.      º 
 º 14/07/2001                        º 
 ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍŒ 
}
program errcuil;
uses 
   crt; 
type 
   tcuil=array[1..11] of char; 
var 
   c:tcuil; 
   i:byte; 
   vc1,vc2,vc3,vc4,vc5:byte; 
   vc6,vc7,vc8,vc9,vc10,vc11:byte; 
   vtotal,vcoci,vres:real; 
   err:integer;
begin 
   clrscr; 
   writeln('**CONTROL DEL CUIL**'); 
   writeln; 
   writeln; 
   i:=0; 
   write('Ingrese el CUIL: '); 
   repeat 
      i:=i+1; 
      read(c[i]); 
   until eoln(input); 
   val(c[1],vc1,err); 
   val(c[2],vc2,err); 
   val(c[3],vc3,err); 
   val(c[4],vc4,err); 
   val(c[5],vc5,err); 
   val(c[6],vc6,err); 
   val(c[7],vc7,err); 
   val(c[8],vc8,err); 
   val(c[9],vc9,err); 
   val(c[10],vc10,err); 
   val(c[11],vc11,err); 
   vtotal:=(vc1*5 + vc2*4 + vc3*3 + vc4*2 + vc5*7 + vc6*6 + vc7*5 + vc8*4 + vc9*3 + vc10*2)*10; 
   vcoci:=vtotal/11; 
   vres:=vtotal-(INT(vcoci)*11); 
   if (vres vc11) or (vcoci = 0) then 
   begin 
        writeln('VTOTAL: ', vtotal:10:2); 
        writeln('VCOCI: ', vcoci:10:2); 
        writeln('Vres: ', vres:10:2); 
        writeln; 
        writeln('CUIT ERRONEO'); 
   end 
   else 
   begin 
        writeln('VTOTAL: ', vtotal:10:2); 
        writeln('VCOCI: ', vcoci:10:2); 
        writeln('Vres: ', vres:10:2); 
        writeln; 
        writeln('CUIT OK'); 
   end; 
   readln; 
   readln; 
end.
