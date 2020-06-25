function tabla = diferencias_divididas(x, y)
   n=length(xd);
  dfd=zeros(n,n);
  dfd(:,1)=yd(:);
  for j=2:n
      for i=j:n
          dfd(i,j)=(dfd(i,j-1)-dfd(i-1,j-1))/(xd(i)-xd(i-j+1))
      end
  end
  N=dfd(1,1);
  for i=2:n
      N=N+dfd(i,i)*poly(xd(1:(i-1)),"x");
  end
endfunction
