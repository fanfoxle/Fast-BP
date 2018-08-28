vn1 = 25;
vn2 = 25;
vn3 = 25;
vn4 = 25;

pn = 100;

rn = 1;

pr = zeros(pn,rn);
for i = 1:pn
    pr(i) = 20;
end

local = rand(400,100);
for i = 1:100
    for j = 1:400
        if local(j,i) <= 0.5
            local(j,i) = 0;
        else
            local(j,i) = 1;
        end
    end
end

VMI1_ = rand(100,5);
for i = 1:5
    for j = 1:100
        if VMI1_(j,i) <= 0.5
            VMI1_(j,i) = 0;
        else
            VMI1_(j,i) = 1;
        end
    end
end
VMI1 = [VMI1_;zeros(100,5);zeros(100,5);zeros(100,5)];

VMI2_ = rand(100,5);
for i = 1:5
    for j = 1:100
        if VMI2_(j,i) <= 0.5
            VMI2_(j,i) = 0;
        else
            VMI2_(j,i) = 1;
        end
    end
end
VMI2 = [zeros(100,5);VMI2_;zeros(100,5);zeros(100,5)];

VMI3_ = rand(100,5);
for i = 1:5
    for j = 1:100
        if VMI3_(j,i) <= 0.5
            VMI3_(j,i) = 0;
        else
            VMI3_(j,i) = 1;
        end
    end
end
VMI3 = [zeros(100,5);zeros(100,5);VMI3_;zeros(100,5)];


VMI4_ = rand(100,5);
for i = 1:5
    for j = 1:100
        if VMI4_(j,i) <= 0.5
            VMI4_(j,i) = 0;
        else
            VMI4_(j,i) = 1;
        end
    end
end
VMI4 = [zeros(100,5);zeros(100,5);zeros(100,5);VMI4_];

VMI = [VMI1 VMI2 VMI3 VMI4];

t2 = zeros(4,5,5);
t2(1,:,:) = gen_t2(VMI1_);
t2(2,:,:) = gen_t2(VMI2_);
t2(3,:,:) = gen_t2(VMI3_);
t2(4,:,:) = gen_t2(VMI4_);

t3 = zeros(4,5,5,5);
t3(1,:,:,:) = gen_t3(VMI1_);
t3(2,:,:,:) = gen_t3(VMI2_);
t3(3,:,:,:) = gen_t3(VMI3_);
t3(4,:,:,:) = gen_t3(VMI4_);

t4 = zeros(4,5,5,5,5);
t4(1,:,:,:,:) = gen_t4(VMI1_);
t4(2,:,:,:,:) = gen_t4(VMI2_);
t4(3,:,:,:,:) = gen_t4(VMI3_);
t4(4,:,:,:,:) = gen_t4(VMI4_);

request1 = zeros(1,vn1);
vr1 = zeros(vn1,rn);
for i =1:vn1
    request1(i) = sampling(1:5,1);
    vr1(i) = sampling(1:5,1);
end

request2 = zeros(1,vn2);
vr2 = zeros(vn2,rn);
for i =1:vn2
    request2(i) = sampling(1:5,1);
    vr2(i) = sampling(1:5,1);
end

request3 = zeros(1,vn3);
vr3 = zeros(vn3,rn);
for i =1:vn3
    request3(i) = sampling(1:5,1);
    vr3(i) = sampling(1:5,1);
end

request4 = zeros(1,vn4);
vr4 = zeros(vn4,rn);
for i =1:vn4
    request4(i) = sampling(1:5,1);
    vr4(i) = sampling(1:5,1);
end

request = [request1;request2;request3;request4];

vt1_ = zeros(5,20);
vt1 = zeros(5,20,3);
for i = 1:5
    t = find(request1==i);
    vt_cap = zeros(1,20);
    for j = 1:length(t)
        vt1_(i,j) = t(j);
        vt_cap(j) = vr1(t(j));
    end
    [vt_res,vt_sort] = sort(vt_cap,'descend');
    for j = 1:length(t)
        vt1(i,j,1) = vt1_(i,vt_sort(j));
        vt1(i,j,2) = vt_res(j);
    end
end

vt2_ = zeros(5,20);
vt2 = zeros(5,20,3);
for i = 1:5
    t = find(request2==i);
    vt_cap = zeros(1,20);
    for j = 1:length(t)
        vt2_(i,j) = t(j);
        vt_cap(j) = vr2(t(j));
    end
    [vt_res,vt_sort] = sort(vt_cap,'descend');
    for j = 1:length(t)
        vt2(i,j,1) = vt2_(i,vt_sort(j));
        vt2(i,j,2) = vt_res(j);
    end
end

vt3_ = zeros(5,20);
vt3 = zeros(5,20,3);
for i = 1:5
    t = find(request3==i);
    vt_cap = zeros(1,20);
    for j = 1:length(t)
        vt3_(i,j) = t(j);
        vt_cap(j) = vr3(t(j));
    end
    [vt_res,vt_sort] = sort(vt_cap,'descend');
    for j = 1:length(t)
        vt3(i,j,1) = vt3_(i,vt_sort(j));
        vt3(i,j,2) = vt_res(j);
    end
end

vt4_ = zeros(5,20);
vt4 = zeros(5,20,3);
for i = 1:5
    t = find(request4==i);
    vt_cap = zeros(1,20);
    for j = 1:length(t)
        vt4_(i,j) = t(j);
        vt_cap(j) = vr4(t(j));
    end
    [vt_res,vt_sort] = sort(vt_cap,'descend');
    for j = 1:length(t)
        vt4(i,j,1) = vt4_(i,vt_sort(j));
        vt4(i,j,2) = vt_res(j);
    end
end

vt = zeros(4,5,20,3);
vt(1,:,:,:) = vt1;
vt(2,:,:,:) = vt2;
vt(3,:,:,:) = vt3;
vt(4,:,:,:) = vt4;