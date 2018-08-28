clear;
global g_vm;
g_vm = 25;
global g_block;
g_block = 20000;
tic
block_2 = round(g_block*0.3);
block_3 = round(g_block*0.2);
block_4 = round(g_block*0.1);
block_5 = round(g_block*0.06);
block_6 = round(g_block*0.04);
block_7 = round(g_block*0.025);
block_8 = round(g_block*0.025);
block_9 = round(g_block*0.025);
block_10 = round(g_block*0.025);
block_others = round(g_block*0.001);
%block 11-25
block_unique = g_block - block_2 - block_3 - block_4 - block_5 - block_6 - block_7 - block_8 - block_9 - block_10 - block_others*15;

VM1 = [matrix_2(block_unique, g_vm,1);
            matrix_2(block_2, g_vm,2);
            matrix_2(block_3, g_vm,3); 
            matrix_2(block_4, g_vm,4); 
            matrix_2(block_5, g_vm,5); 
            matrix_2(block_6, g_vm,6); 
            matrix_2(block_7, g_vm,7); 
            matrix_2(block_8, g_vm,8); 
            matrix_2(block_9, g_vm,9); 
            matrix_2(block_10, g_vm,10); 
            matrix_2(block_others, g_vm,11); 
            matrix_2(block_others, g_vm,12); 
            matrix_2(block_others, g_vm,13); 
            matrix_2(block_others, g_vm,14); 
            matrix_2(block_others, g_vm,15); 
            matrix_2(block_others, g_vm,16); 
            matrix_2(block_others, g_vm,17); 
            matrix_2(block_others, g_vm,18); 
            matrix_2(block_others, g_vm,19); 
            matrix_2(block_others, g_vm,20); 
            matrix_2(block_others, g_vm,21); 
            matrix_2(block_others, g_vm,22); 
            matrix_2(block_others, g_vm,23); 
            matrix_2(block_others, g_vm,24); 
            matrix_2(block_others, g_vm,25); 
            ];
        
VM2 = [matrix_2(block_unique, g_vm,1);
            matrix_2(block_2, g_vm,2);
            matrix_2(block_3, g_vm,3); 
            matrix_2(block_4, g_vm,4); 
            matrix_2(block_5, g_vm,5); 
            matrix_2(block_6, g_vm,6); 
            matrix_2(block_7, g_vm,7); 
            matrix_2(block_8, g_vm,8); 
            matrix_2(block_9, g_vm,9); 
            matrix_2(block_10, g_vm,10); 
            matrix_2(block_others, g_vm,11); 
            matrix_2(block_others, g_vm,12); 
            matrix_2(block_others, g_vm,13); 
            matrix_2(block_others, g_vm,14); 
            matrix_2(block_others, g_vm,15); 
            matrix_2(block_others, g_vm,16); 
            matrix_2(block_others, g_vm,17); 
            matrix_2(block_others, g_vm,18); 
            matrix_2(block_others, g_vm,19); 
            matrix_2(block_others, g_vm,20); 
            matrix_2(block_others, g_vm,21); 
            matrix_2(block_others, g_vm,22); 
            matrix_2(block_others, g_vm,23); 
            matrix_2(block_others, g_vm,24); 
            matrix_2(block_others, g_vm,25); 
            ];
        
VM3 = [matrix_2(block_unique, g_vm,1);
            matrix_2(block_2, g_vm,2);
            matrix_2(block_3, g_vm,3); 
            matrix_2(block_4, g_vm,4); 
            matrix_2(block_5, g_vm,5); 
            matrix_2(block_6, g_vm,6); 
            matrix_2(block_7, g_vm,7); 
            matrix_2(block_8, g_vm,8); 
            matrix_2(block_9, g_vm,9); 
            matrix_2(block_10, g_vm,10); 
            matrix_2(block_others, g_vm,11); 
            matrix_2(block_others, g_vm,12); 
            matrix_2(block_others, g_vm,13); 
            matrix_2(block_others, g_vm,14); 
            matrix_2(block_others, g_vm,15); 
            matrix_2(block_others, g_vm,16); 
            matrix_2(block_others, g_vm,17); 
            matrix_2(block_others, g_vm,18); 
            matrix_2(block_others, g_vm,19); 
            matrix_2(block_others, g_vm,20); 
            matrix_2(block_others, g_vm,21); 
            matrix_2(block_others, g_vm,22); 
            matrix_2(block_others, g_vm,23); 
            matrix_2(block_others, g_vm,24); 
            matrix_2(block_others, g_vm,25); 
            ];
        
VM4 = [matrix_2(block_unique, g_vm,1);
            matrix_2(block_2, g_vm,2);
            matrix_2(block_3, g_vm,3); 
            matrix_2(block_4, g_vm,4); 
            matrix_2(block_5, g_vm,5); 
            matrix_2(block_6, g_vm,6); 
            matrix_2(block_7, g_vm,7); 
            matrix_2(block_8, g_vm,8); 
            matrix_2(block_9, g_vm,9); 
            matrix_2(block_10, g_vm,10); 
            matrix_2(block_others, g_vm,11); 
            matrix_2(block_others, g_vm,12); 
            matrix_2(block_others, g_vm,13); 
            matrix_2(block_others, g_vm,14); 
            matrix_2(block_others, g_vm,15); 
            matrix_2(block_others, g_vm,16); 
            matrix_2(block_others, g_vm,17); 
            matrix_2(block_others, g_vm,18); 
            matrix_2(block_others, g_vm,19); 
            matrix_2(block_others, g_vm,20); 
            matrix_2(block_others, g_vm,21); 
            matrix_2(block_others, g_vm,22); 
            matrix_2(block_others, g_vm,23); 
            matrix_2(block_others, g_vm,24); 
            matrix_2(block_others, g_vm,25); 
            ];
toc
M1=[VM1;zeros(g_block*3,g_vm)];
M2=[zeros(g_block,g_vm);VM2;zeros(g_block*2,g_vm)];
M3=[zeros(g_block*2,g_vm);VM3;zeros(g_block,g_vm)];
M4=[zeros(g_block*3,g_vm);VM4];
M_S = [M1 M2 M3 M4];
M(:,:,1) = M1;
M(:,:,2) = M2;
M(:,:,3) = M3;
M(:,:,4) = M4;
%M(block个数，每个hvm里vm个数，hvm个数)