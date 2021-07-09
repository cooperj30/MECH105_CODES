function [L, U, P] = luFactor(A)
% luFactor(A)
%	LU decomposition with pivotiing
% inputs:
%	A = coefficient matrix
% outputs:
%	L = lower triangular matrix
%	U = upper triangular matrix
%       P = the permutation matrix
[r,c]= size (A);
if r~=c
    error('USE SQUARE MATRIX')
else
    L=eye(c);
    P=eye(c);
    U=A;
    for i = 1:r-1
        piv= max(abs(U(i:i,r)));
        for i2=i:r
            if abs(U(i2,i)) == piv
                q= i2;
                U([i,q],i:r)=U([q,i],i:r);
                L([i,q],1:i-1)=L([q,i],1:i-1);
                P([i,q],:)=P([q,i],:);
            end
        end
        for i2= i+1:r
            L(i2,i) = U(i2,i)/U(i,i);
            U(i2,i:r) = U(i2,i:r)-L(i2,i)*U(i,i:r);
        end
    end
end


end