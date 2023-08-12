clc
clear
%该脚本实施最后的DPA攻击
load("../mat/h.mat"); %读取数据为h
load("../mat/energy.mat")%读取数据为data
r = zeros(size(h,2),size(data,2));%相关系数矩阵
for i = 1:size(h,2)
    disp(i);
    for j = 1:size(data,2)
        key = h(:,i);
        energy_real = data(:,j);
        relation = corrcoef(key,energy_real);
        r(i,j) = relation(1,2);
    end
end
[maxValue, linearIndex] = max(r(:));  % 找到矩阵的最大值和线性索引
[row, col] = ind2sub(size(r), linearIndex);  % 将线性索引转换为行列索引
r_max = r(row,:); 
data2 = r(37,:);
plot(r_max);  % 绘制图形
hold on
plot(data2);
xlabel('Index');  % 设置横坐标标签
ylabel('Value');  % 设置纵坐标标签
title('相关性');  % 设置图形标题