# DPA_example
DPA攻击简单示例 ————使用汉明质量模型
一共使用两种语言：matlab和python
python用于读取wave.txt文件，使用python读取原因是wave.txt文件太大了，matlab无法直接使用，读取txt文件的前1000行（可自己选择）的前50000个点（可自己选取），即1000个明文输入的50000个能量点，将其转换为matlab可使用的mat文件，命名为"energy.mat”，
matlab用于处理，各个文件作用如下：
①S.m：将S盒数据直接映射为汉明质量数据，因为使用汉明质量模型，这样可以减少运算
②v_.m：用于将明文选定字节与256个密钥计算出所有的中间值
③h_.m:用于将所有中间值通过汉明质量模型映射为假设能量值
④text_in.m：用于读取text_in.txt，转换为十进制数据
⑤DPA.m：真正进行DPA攻击的代码
matlab文件夹下三个文件夹分别代表原始数据txt，中间数据mat，代码文件code
