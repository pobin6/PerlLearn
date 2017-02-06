#!/usr/bin/perl
##Copyrigh (C) 2011 by linchao
#Program:
#   Perl变量练习
#2017/01/21     林超      First release

#标量运算
#字符串连接
$str = "hello" . "world";
#两数相加
$num = 5 + 10;
#连接字符串和数字
$mix = $str . $num;

print("str = $str\n");
print("num = $num\n");
print("mix = $mix\n");

#多行字符串
$string = '
菜鸟教程
        —— 学的不仅是技术，更是梦想！
';

print("$string\n");

#变量上下文
#所谓上下文：指的是表达式所在的位置。
#上下文是由等号左边的变量类型决定的，等号左边是标量，则是标量上下文，等号左边是列表，则是列表上下文。
#Perl 解释器会根据上下文来决定变量的类型。实例如下：
@names = ('google', 'runoob', 'taobao');
#复制数组
@copy = @names;
#数组赋值给标量，返回数组元素的个数
$size = @names;
#perlLearn/varPerl.pl
#非十进制的输出还是十进制
$octal = 0377;
print("octal = $octal\n");

#特殊字符
#以下我们将演示 Perl 中特殊字符的应用，如 __FILE__, __LINE__, 和 __PACKAGE__ 分别表示当前执行脚本的文件名，行号，包名。
#这些特殊字符是单独的标记，不能写在字符串中，例如：
print("文件名".__FILE__."\n");
print("行号".__LINE__."\n");
print("包名".__PACKAGE__."\n");

#v 字符串
#一个以 v 开头,后面跟着一个或多个用句点分隔的整数,会被当作一个字串文本。
#当你想为每个字符 直接声明其数字值时,v-字串提供了一种更清晰的构造这类字串的方法，而不像 "\x{1}\x{14}\x{12c}\x{fa0}" 这种不易于理解，我么可以看下面的实例：
$smile = v9786;
$foo = v102.111.111;
$martin = v77.97.114.116.105.110;

print("smile = $smile\n");
print("foo = $foo\n");
print("martin = $martin\n");

#数组的使用
@hits = (25, 30, 40);
@names = ("google", "runoob", "taobao");

print("\$hits[0] = $hits[0]\n");
print("\$hits[1] = $hits[1]\n");
print("\$hits[2] = $hits[2]\n");
print("\$names[0] = $names[0]\n");
print("\$names[1] = $names[1]\n");
print("\$names[2] = $names[2]\n");

#不同的创建方式
#()创建
@array = (1, 2, 'Hello');

print("\$array[0] = $array[0]\n");
print("\$array[1] = $array[1]\n");
print("\$array[2] = $array[2]\n");
#qw创建
@array2 = qw/这是 一个 数组/;
print("\$array2[0] = $array2[0]\n");
print("\$array2[1] = $array2[1]\n");
print("\$array2[2] = $array2[2]\n");

@array3 = qw/google
             taobao
             runoob/;

print("\$array3[0] = $array3[0]\n");
print("\$array3[1] = $array3[1]\n");
print("\$array3[2] = $array3[2]\n");
#索引创建
$array4[0] = 'Monday';
$array4[1] = 'Tuesday';

print("\$array4[0] = $array4[0]\n");
print("\$array4[1] = $array4[1]\n");

#数组序列号
#Perl 提供了可以按序列输出的数组形式，
#格式为 起始值 + .. + 结束值，实例如下：
@var_10 = (1..10);
@var_20 = (10..20);
@var_abc = (a..z);

print("@var_10\n");
print("@var_20\n");
print("@var_abc\n");

#数组大小由数组中的标量上下文决定
@array = (1,2,3);
$array[50] = 4;

$size = @array;
$max_index = $#array;

print("数组大小：$size\n");
print("最大索引：$max_index\n");

#添加和删除数组元素
#Perl 提供了一些有用的函数来添加和删除数组元素。
#创建一个简单的数组
@sites = ("google", "runoob", "taobao");
print("1.\@sites = @sites\n");

#在数组结尾添加一个元素
push(@sites, "baidu");
print("2.\@sites = @sites\n");

#在数组开头添加一个元素
unshift(@sites, "weibo");
print("3.\@sites = @sites\n");

#删除数组末尾的元素
pop(@sites);
print("4.\@sites = @sites\n");

#移除数组开头的元素
shift(@sites);
print("5.\@sites = @sites\n");

#切割数组
@sites = qw/google taobao runoob weibo qq facebook 网易/;
@sites2 = @sites[3..6];
print("@sites2\n");

#替换数组元素 splice()
#Perl 中数组元素替换使用 splice() 函数，语法格式如下：
#splice @ARRAY, OFFSET [ , LENGTH [ , LIST ] ]
#参数说明：
#@ARRAY：要替换的数组。
#OFFSET：起始位置。
#LENGTH：替换的元素个数。
#LIST：替换元素列表。
@nums = (1..20);
print("替换前 - @nums\n");

splice(@nums, 5, 5, 21..25);
print("替换后 - @nums\n");

#将字符串转换为数组
#Perl 中将字符串转换为数组使用 split() 函数，语法格式如下：
#split [ PATTERN [ , EXPR [ , LIMIT ] ] ]
#参数说明：
#PATTERN：分隔符，默认为空格。
#EXPR：指定字符串数。
#LIMIT：如果指定该参数，则返回该数组的元素个数。

#定义字符串
$var_test = "runoob";
$var_string = "www-runoob-com";
$var_names = "google, taobao, runoob, weibo";

#字符转为数组
@test = split('', $var_test);
@string = split('-', $var_string);
@names = split(', ', $var_names);

print("@test\n");
print("@string\n");
print("@names\n");

#将数组转换为字符串
#Perl 中将数组转换为字符串使用 join() 函数，语法格式如下：
#join EXPR, LIST
#参数说明：
#EXPR：连接符。
#LIST：列表或数组。

$string1 = join('-', @string);
$string2 = join(', ',@names);

print("$string1\n");
print("$string2\n");

#数组排序
#Perl 中数组排序使用 sort() 函数，语法格式如下：
#sort [ SUBROUTINE ] LIST
#参数说明：
#SUBROUTINE：指定规则。
#LIMIT：列表或数组。
#根据ascii数字值排序，最好将每个元素全为大写或小写

@sites = qw(google taobao runoob facebook);
print("排序前：@sites\n");

@sites = sort(@sites);
print("排序后：@sites\n");

#特殊变量： $[
#特殊变量 $[ 表示数组的第一索引值，一般都为 0 ，
#如果我们将 $[ 设置为 1，则数组的第一个索引值即为 1，
#第二个为 2，以此类推。实例如下：

@sites = qw(google taobao runoob facebook);
print("网站：@sites\n");

$[ = 1;
print("\@sites[1]：$sites[1]\n");
print("\@sites[2]：$sites[2]\n");

#数组的合并
@numbers = (1, 2, (4..6));
print("numbers = @numbers\n");

@odd = (1, 3, 5);
@even = (2, 4, 6);
@numbers = (@odd, @even);

print("numbers = @numbers\n");
