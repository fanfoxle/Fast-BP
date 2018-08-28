function [ t2 ] = gen_t2( vmi )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    [~,s] = size(vmi);
    t2 = zeros(s,s);
    for i = 1:s
        for j = 1:s
            t = vmi(:,i) & vmi(:,j);
            t2(i,j) = sum(t);
        end
    end
end

