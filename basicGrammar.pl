#!/usr/bin/perl
#Program:
#       演示Perl语言的基础语法
#2017/01/21     林超      First release

#演示 在引号内的空格，回车会输出分行
print("Hello
        world\n");

#申明变量a，用于之后的演示
$a = 10;

#演示双引号与单引号的区别
#双引号会加载转义字符
print("Hello world\n");
print("a = $a\n");
#单引号不会加载转义字符
print('Hello world\n');
print('a = $a\n');

#演示 Here 文档
#双引号
$var = <<"EOF";
这是一个 Here 文档实例，使用双引号。
可以在这输入字符串和变量。
例如：a = $a
EOF
print("$var\n");
#单引号
$var = << 'EOF';
这是一个 Here 文档实例，使用单引号。
例如：a = $a
EOF
print("$var\n");

#演示转义字符
$result = "菜鸟教程 \"runoob\"";
print("$result\n");
print("\$result\n");