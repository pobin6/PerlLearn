#!/usr/bin/perl
#Program:
#   演示Perl的数据类型
#2017/01/21     林超      First release

#标量：数字、字符串、浮点数都包括，没有严格区分
#数字123
$myfirst = 123;
#字符串123
$mysecond = "123";

#数组：以@开头
@arr = (1,2,3);

#哈希：无序的key/value对集合。
%h = ('a' => 1, 'b' => 2);

#进制数
#十进制
$var1 = 10;
#八进制
$var2 = 012;
#十六进制
$var3 = 0xA;

#浮点数运算注意！！！！
$value = 9.01e+21 + 0.01 - 9.01e+21;
print("第一个值为：", $value, "\n");
$value = 9.01e+21 - 9.01e+21 +0.01;
print("第二个值为：", $value, "\n");

#控制字符串格式
#只有R会转换为大写
$str = "\urunoob";
print("$str\n");

#所有的字母都会转换为大写
$str = "\Urunoob";
print("$str\n");

#指定部分会转换为大写
$str = "Welcome to \Urunoob\E.com";
print("$str\n");
#将到\E为止的非单词（non-word）字符加上反斜线
$str = "\QWelcome to runoob's family";
print("$str\n");