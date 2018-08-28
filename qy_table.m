function [ p ] = qy_table( b, c , table, n, test )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
       %b is sorted, request
       %c is sorted, local
       switch test
           case 1
               A_ = combntns(c,n-1);
               [Al_,~] = size(A_);
               A = [];
               for i = 1:length(b)
                    if i<=length(b)
                        b_ = b(i) * ones (Al_,1);
                        A__ = [A_ b_];
                        A = [A;A__ ];
                    end           
               end
               [A1,~] = size(A);
               B = zeros(1,A1);
               for i = 1:A1
                   switch n
                       case 2
                           B(i) = table( A(i,1), A(i,2));
                       case 3
                           B(i) = table( A(i,1), A(i,2), A(i,3));
                       case 4
                           B(i) = table( A(i,1), A(i,2), A(i,3), A(1,4));
                   end                    
               end
               Bm = min(B);
               Bmp = find(B==Bm);
               Bmp = Bmp(1);
               p = A(Bmp,n);
           case 2
               p = sampling(c,1);
           case 3
               p = c(1);
           case 4
       end
end