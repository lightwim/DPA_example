clc
clear
%本函数作用为将text_in文件打包为text_in.mat，方便进一步处理
fid = fopen('../txt/text_in.txt', 'r');
data = textscan(fid, '%s');
fclose(fid);

data = data{1};  % 将单元格数组转换为普通的字符串数组

% 初始化二维数组
numRows = length(data)/16;
numCols = 16;
text = zeros(numRows, numCols);

% 将字符串转换为十进制数并存储到二维数组中
for i = 1:numRows
    for j = 1:numCols
        text(i, j) = hex2dec(data{(i-1)*16+j});
    end
end

disp(text);
save("../mat/text_in.mat","text");