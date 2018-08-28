function [ t4 ] = gen_t4( vmi )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    [~,s] = size(vmi);
    t4 = zeros(s,s,s,s);
    for i = 1:s
        for j = 1:s
            for k = 1:s
                for h = 1:s
                    t = vmi(:,i) & vmi(:,j) & vmi(:,k)  & vmi(:,h);
                    t4(i,j,k,h) = sum(t);
                end                
            end           
        end
    end
end

