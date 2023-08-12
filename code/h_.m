clc
clear
%本脚本利用中间值v和s_weight生成能量消耗
load("../mat/s_weight.mat");
load("../mat/v.mat");
%接下来将v值解析为s盒下标
h = zeros(size(v,1),size(v,2));
for i = 1:size(v,1)
    for j = 1:size(v,2)
        row = floor(v(i,j) / 16) + 1;  % 行下标
        col = mod(v(i,j), 16) + 1;  % 列下标
        h(i,j) = hamming_weight(row,col);
    end
end
disp(h);
save("../mat/h.mat","h");