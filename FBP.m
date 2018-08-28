for i = 1:pn
    cap(i) = pr(i)/20;
end
[~,capsort] = sort(cap,'descend');

local_vmi = zeros(pn,4,5);
q = 1;
for i = 1:pn
    if pr(capsort(i))>1 && length(find(vt(:,:,:,3)>0))<100
        vt_size = zeros(1,4);
        for j = 1:4
        vt_size(j) = length(find(vt(j,:,:,1)>0));
        end
        [~,vt_size_sort] = sort(vt_size,'descend');
        
        for j = 1:4
            if j == 1
                vt_length = zeros(1,5);
                for k = 1:5
                    vt_length(k) = length(find(vt(vt_size_sort(j),k,:,1)>0));
                end
                [~,vt_length_sort] = sort(vt_length,'descend');
                candidate_que = find(vt(vt_size_sort(j),vt_length_sort(1),:,1)>0);
                for k = 1:length(find(candidate_que>0))
                    if pr(capsort(i))-vt(vt_size_sort(j),vt_length_sort(1),candidate_que(k),2)>0 
                        pr(capsort(i)) = pr(capsort(i))-vt(vt_size_sort(j),vt_length_sort(1),candidate_que(k),2);
                        vt(vt_size_sort(j),vt_length_sort(1),candidate_que(k),3) = capsort(i);
                        local_vmi(capsort(i),vt_size_sort(j),vt_length_sort(1)) = 1;
                        vt(vt_size_sort(j),vt_length_sort(1),candidate_que(k),1) = 0;
                        vt(vt_size_sort(j),vt_length_sort(1),candidate_que(k),2) = 0;
                        q = q+1
                    end
                end
                for h=2:5
                    if pr(capsort(i))>1 && length(find(vt(:,:,:,3)>0))<100
                        switch h
                            case 2
                                vmi_on_pm = qy_table( vt_length_sort(2:5), vt_length_sort(1) , t2(vt_size_sort(j),:,:), 2, 2 );
                            case 3
                                vmi_on_pm = qy_table( vt_length_sort(3:5), vt_length_sort(1:2) , t3(vt_size_sort(j),:,:,:), 2, 2 );
                            case 4
                                vmi_on_pm = qy_table( vt_length_sort(4:5), vt_length_sort(1:3) , t4(vt_size_sort(j),:,:,:,:), 2, 2 );
                            case 5
                                vmi_on_pm = qy_table( vt_length_sort(5), vt_length_sort(1:4) , t4(vt_size_sort(j),:,:,:,:), 2, 2 );
                        end
                        candidate_que = find(vt(vt_size_sort(j),vt_length_sort(vmi_on_pm),:,1)>0);
                        for k = 1:length(find(candidate_que>0))
                            if pr(capsort(i))-vt(vt_size_sort(j),vt_length_sort(vmi_on_pm),candidate_que(k),2)>0 
                                pr(capsort(i)) = pr(capsort(i))-vt(vt_size_sort(j),vt_length_sort(vmi_on_pm),candidate_que(k),2);
                                vt(vt_size_sort(j),vt_length_sort(vmi_on_pm),candidate_que(k),3) = capsort(i);
                                local_vmi(capsort(i),vt_size_sort(j),vt_length_sort(vmi_on_pm)) = 1;
                                vt(vt_size_sort(j),vt_length_sort(vmi_on_pm),candidate_que(k),1) = 0;
                                vt(vt_size_sort(j),vt_length_sort(vmi_on_pm),candidate_que(k),2) = 0;
                                q = q+1
                            end
                        end
                    end 
                end
            else
                vt_length = zeros(1,5);
                for k = 1:5
                    vt_length(k) = length(find(vt(vt_size_sort(j),k,:,1)>0));
                end
                [~,vt_length_sort] = sort(vt_length,'descend');
                candidate_que = find(vt(vt_size_sort(j),vt_length_sort(1),:,1)>0);
                for k = 1:length(find(candidate_que>0))
                    if pr(capsort(i))-vt(vt_size_sort(j),vt_length_sort(1),candidate_que(k),2)>0 
                        pr(capsort(i)) = pr(capsort(i))-vt(vt_size_sort(j),vt_length_sort(1),candidate_que(k),2);
                        vt(vt_size_sort(j),vt_length_sort(1),candidate_que(k),3) = capsort(i);
                        local_vmi(capsort(i),vt_size_sort(j),vt_length_sort(1)) = 1;
                        vt(vt_size_sort(j),vt_length_sort(1),candidate_que(k),1) = 0;
                        vt(vt_size_sort(j),vt_length_sort(1),candidate_que(k),2) = 0;
                        q = q+1
                    end
                end
            end           
        end
    end    
end
