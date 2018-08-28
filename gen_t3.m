function [ t3 ] = gen_t3( vmi )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    [~,s] = size(vmi);
    t3 = zeros(s,s,s);
    for i = 1:s
        for j = 1:s
            for k = 1:s
                t = vmi(:,i) & vmi(:,j) & vmi(:,k);
                t3(i,j,k) = sum(t);
            end           
        end
    end
end
