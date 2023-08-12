import numpy as np
import scipy.io
# 读取原始文本文件
numRows = 1000 # 明文数量
numCols = 50000 # 能量迹数量
with open('wave.txt', 'r') as file:
    lines = file.readlines()

# 提取前500行的前25000个数
data = []
for line in lines[:numRows]:
    numbers = line.split()[:numCols]
    data.append(numbers)

# 将数据转换为numpy数组
data = np.array(data, dtype=np.float64)

# 将数据保存为mat格式文件
scipy.io.savemat('energy.mat', {'data': data})