global g_vm;
g_vm = 10;
global g_block;
g_block = 20000;
tic
block_1 = round(g_block*0.03);
block_2 = round(g_block*0.06);
block_3 = round(g_block*0.03);
block_4 = round(g_block*0.03);
block_5 = round(g_block*0.03);
block_6 = round(g_block*0.03);
block_7 = round(g_block*0.04);
block_8 = round(g_block*0.05);
block_9 = round(g_block*0.1);
block_10 = round(g_block*0.6);

VM1 = [matrix_2(block_1, g_vm,1);
            matrix_2(block_2, g_vm,2);
            matrix_2(block_3, g_vm,3); 
            matrix_2(block_4, g_vm,4); 
            matrix_2(block_5, g_vm,5); 
            matrix_2(block_6, g_vm,6); 
            matrix_2(block_7, g_vm,7); 
            matrix_2(block_8, g_vm,8); 
            matrix_2(block_9, g_vm,9); 
            matrix_2(block_10, g_vm,10); 
            ];
        
VM2 = [matrix_2(block_1, g_vm,1);
            matrix_2(block_2, g_vm,2);
            matrix_2(block_3, g_vm,3); 
            matrix_2(block_4, g_vm,4); 
            matrix_2(block_5, g_vm,5); 
            matrix_2(block_6, g_vm,6); 
            matrix_2(block_7, g_vm,7); 
            matrix_2(block_8, g_vm,8); 
            matrix_2(block_9, g_vm,9); 
            matrix_2(block_10, g_vm,10); 
            ];
        
VM3 =[matrix_2(block_1, g_vm,1);
            matrix_2(block_2, g_vm,2);
            matrix_2(block_3, g_vm,3); 
            matrix_2(block_4, g_vm,4); 
            matrix_2(block_5, g_vm,5); 
            matrix_2(block_6, g_vm,6); 
            matrix_2(block_7, g_vm,7); 
            matrix_2(block_8, g_vm,8); 
            matrix_2(block_9, g_vm,9); 
            matrix_2(block_10, g_vm,10); 
            ];
VM4 =[matrix_2(block_1, g_vm,1);
            matrix_2(block_2, g_vm,2);
            matrix_2(block_3, g_vm,3); 
            matrix_2(block_4, g_vm,4); 
            matrix_2(block_5, g_vm,5); 
            matrix_2(block_6, g_vm,6); 
            matrix_2(block_7, g_vm,7); 
            matrix_2(block_8, g_vm,8); 
            matrix_2(block_9, g_vm,9); 
            matrix_2(block_10, g_vm,10); 
            ];        
M1=[VM1;zeros(g_block*3,g_vm)];
M2=[zeros(g_block,g_vm);VM2;zeros(g_block*2,g_vm)];
M3=[zeros(g_block*2,g_vm);VM3;zeros(g_block,g_vm)];
M4=[zeros(g_block*3,g_vm);VM4];
M_S3 = [M1 M2 M3 M4];
%M(:,:,1) = M1;
%M(:,:,2) = M2;
%M(:,:,3) = M3;

app = zeros(1,10);
app_2 = zeros(1,10);
app_3 = zeros(1,10);
app_4 = zeros(1,10);
TMP = [0.4 0.5 0.6 0.7 0.8 0.9];
for i = 1:10
    tmp = randi([1,6],1,1);
    app(i) = TMP(tmp);
    switch app(i)
        case 0.4
            app_2(i) = 0.3;
            app_3(i) = 0.2;
            app_4(i) = 0.1;
        case 0.5
            app_2(i) = 0.2;
            app_3(i) = 0.2;
            app_4(i) = 0.1;
        case 0.6
            app_2(i) = 0.2;
            app_3(i) = 0.1;
            app_4(i) = 0.1;
        case 0.7
            app_2(i) = 0.15;
            app_3(i) = 0.1;
            app_4(i) = 0.05;
        case 0.8
            app_2(i) = 0.1;
            app_3(i) = 0.05;
            app_4(i) = 0.05;
        case 0.9
            app_2(i) = 0.05;
            app_3(i) = 0.025;
            app_4(i) = 0.025;
    end    
end

App_block1 = 6000;
App_block2 = 7000;
App_block3 = 8000;
App_block4 = 9000;
App_block5 = 10000;
App_block6 = 11000;
App_block7 = 12000;
App_block8 = 13000;
App_block9 = 14000;
App_block10 = 15000;

App1 = [matrix_2(App_block1*app_4(1), 4,1);
            matrix_2(App_block1*app_3(1), 4,2);
            matrix_2(App_block1*app_2(1), 4,3); 
            matrix_2(App_block1*app(1), 4,4); 
            ];
[App_block1,~] = size(App1);
A1 = zeros(App_block1,g_vm*4);
A1(:,1) = App1(:,1);
A1(:,11) = App1(:,2);
A1(:,21) = App1(:,3);
A1(:,31) = App1(:,4);

App2 = [matrix_2(App_block2*app_4(2), 4,1);
            matrix_2(App_block2*app_3(2), 4,2);
            matrix_2(App_block2*app_2(2), 4,3); 
            matrix_2(App_block2*app(2), 4,4); 
            ];
[App_block2,~] = size(App2);
A2 = zeros(App_block2,g_vm*4);
A2(:,2) = App2(:,1);
A2(:,12) = App2(:,2);
A2(:,22) = App2(:,3);
A2(:,32) = App2(:,4);

App3 = [matrix_2(App_block3*app_4(3), 4,1);
            matrix_2(App_block3*app_3(3), 4,2);
            matrix_2(App_block3*app_2(3), 4,3); 
            matrix_2(App_block3*app(3), 4,4); 
            ];
[App_block3,~] = size(App3);
A3 = zeros(App_block3,g_vm*4);
A3(:,3) = App3(:,1);
A3(:,13) = App3(:,2);
A3(:,23) = App3(:,3);
A3(:,33) = App3(:,4);

App4 = [matrix_2(App_block4*app_4(4), 4,1);
            matrix_2(App_block4*app_3(4), 4,2);
            matrix_2(App_block4*app_2(4), 4,3); 
            matrix_2(App_block4*app(4), 4,4); 
            ];
[App_block4,~] = size(App4);
A4 = zeros(App_block4,g_vm*4);
A4(:,4) = App4(:,1);
A4(:,14) = App4(:,2);
A4(:,24) = App4(:,3);
A4(:,34) = App4(:,4);

App5 = [matrix_2(App_block5*app_4(5), 4,1);
            matrix_2(App_block5*app_3(5), 4,2);
            matrix_2(App_block5*app_2(5), 4,3); 
            matrix_2(App_block5*app(5), 4,4); 
            ];
[App_block5,~] = size(App5);
A5 = zeros(App_block5,g_vm*4);
A5(:,5) = App5(:,1);
A5(:,15) = App5(:,2);
A5(:,25) = App5(:,3);
A5(:,35) = App5(:,4);

App6 = [matrix_2(App_block6*app_4(6), 4,1);
            matrix_2(App_block6*app_3(6), 4,2);
            matrix_2(App_block6*app_2(6), 4,3); 
            matrix_2(App_block6*app(6), 4,4); 
            ];
[App_block6,~] = size(App6);
A6 = zeros(App_block6,g_vm*4);
A6(:,6) = App6(:,1);
A6(:,16) = App6(:,2);
A6(:,26) = App6(:,3);
A6(:,36) = App6(:,4);

App7 = [matrix_2(App_block7*app_4(7), 4,1);
            matrix_2(App_block7*app_3(7), 4,2);
            matrix_2(App_block7*app_2(7), 4,3); 
            matrix_2(App_block7*app(7), 4,4); 
            ];
[App_block7,~] = size(App7);
A7 = zeros(App_block7,g_vm*4);
A7(:,7) = App7(:,1);
A7(:,17) = App7(:,2);
A7(:,27) = App7(:,3);
A7(:,37) = App7(:,4);

App8 = [matrix_2(App_block8*app_4(8), 4,1);
            matrix_2(App_block8*app_3(8), 4,2);
            matrix_2(App_block8*app_2(8), 4,3); 
            matrix_2(App_block8*app(8), 4,4); 
            ];
[App_block8,~] = size(App8);
A8 = zeros(App_block8,g_vm*4);
A8(:,8) = App8(:,1);
A8(:,18) = App8(:,2);
A8(:,28) = App8(:,3);
A8(:,38) = App8(:,4);

App9 = [matrix_2(App_block9*app_4(9), 4,1);
            matrix_2(App_block9*app_3(9), 4,2);
            matrix_2(App_block9*app_2(9), 4,3); 
            matrix_2(App_block9*app(9), 4,4); 
            ];
[App_block9,~] = size(App9);
A9 = zeros(App_block9,g_vm*4);
A9(:,9) = App9(:,1);
A9(:,19) = App9(:,2);
A9(:,29) = App9(:,3);
A9(:,39) = App9(:,4);

App10 = [matrix_2(App_block10*app_4(10), 4,1);
            matrix_2(App_block10*app_3(10), 4,2);
            matrix_2(App_block10*app_2(10), 4,3); 
            matrix_2(App_block10*app(10), 4,4); 
            ];
[App_block10,~] = size(App10);
A10 = zeros(App_block10,g_vm*4);
A10(:,10) = App10(:,1);
A10(:,20) = App10(:,2);
A10(:,30) = App10(:,3);
A10(:,40) = App10(:,4);

APP3 = [     A1;
                A2;
                A3;
                A4;
                A5;
                A6;
                A7;
                A8;
                A9;
                A10    
                ];
M_S_3 = [M_S3;
                APP3          
                ];
toc
