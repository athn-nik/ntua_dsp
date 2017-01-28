function [Vector] = ttdecode (signIn)
N=length(signIn);
i=1;
j=1;
% mhkos tonou=1000 deigmata
while i<N
    if ( signIn(i)~= 0 )
        ShowBegin(j)= i ;
        j=j+1;
        i=i+999;
    end
    i=i+1;
end
%ShowBegin(:)
%exw pou einai to prwto deigma ka8e tonou, exw j-1 tonous.
N=j-1;
for i= 1:N
    m=1;
    e=0;
    for b= (ShowBegin(i)):(ShowBegin(i)+999)
        ToneArray(m) = signIn(b);
        m=m+1;
    end
    dfttone= abs(fft(ToneArray));
    dfttone= dfttone(1:500);
    p= find(dfttone.^2>70000);
    as=p(1);
    ad=p(2);
    Sear(i)=  Search(as, ad); 
end
Vector = Sear ;
