#!/usr/bin/perl
##Copyrigh (C) 2011 by linchao
#Program:
#       练习Perl的运算符
#2017/01/22     林超      First release

#算术运算符
print("算术运算符===================\n");
$a = 10;
$b = 20;

print("\$a = $a, \$b = $b\n");

$c = $a + $b;
print("\$a + \$b = $c\n");

$c = $a - $b;
print("\$a - \$b = $c\n");

$c = $a * $b;
print("\$a * \$b = $c\n");

$c = $a / $b;
print("\$a / \$b = $c\n");

$c = $a % $b;
print("\$a % \$b = $c\n");

$c = $a ** $b;
print("\$a ** \$b = $c\n");

#比较运算符
print("比较运算符===================\n");
if($a == $b)
{
    print("\$a == \$b 结果 true\n");
}
else
{
    print("\$a == \$b 结果 false\n");
}

if($a != $b)
{
    print("\$a != \$b 结果 true\n");
}
else
{
    print("\$a != \$b 结果 false\n");

}

$c = $a <=> $b;
print("\$a <=> \$b 返回 $c\n");

if($a > $b)
{
    print("\$a > \$b 结果 true\n");
}
else
{
    print("\$a > \$b 结果 false\n");
}

if($a >= $b)
{
    print("\$a >= \$b 结果 true\n");
}
else
{
    print("\$a >= \$b 结果 false\n");
}

if($a < $b)
{
    print("\$a < \$b 结果 true\n");
}
else
{
    print("\$a < \$b 结果 false\n");
}

if($a <= $b)
{
    print("\$a <= \$b 结果 true\n");
}
else
{
    print("\$a <= \$b 结果 false\n");
}


#字符串运算
print("字符运算符===================\n");
$a = "abc";
$b = "xyz";
print("\$a = $a, \$b = $b\n");

if($a lt $b)
{
    print("\$a lt \$b 返回true\n");
}
else
{
    print("\$a lt \$b 返回false\n");
}

if($a gt $b)
{
    print("\$a gt \$b 返回true\n");
}
else
{
    print("\$a gt \$b 返回false\n");
}

if($a le $b)
{
    print("\$a le \$b 返回true\n");
}
else
{
    print("\$a le \$b 返回false\n");
}

if($a ge $b)
{
    print("\$a ge \$b 返回true\n");
}
else
{
    print("\$a ge \$b 返回false\n");
}

if($a eq $b)
{
    print("\$a eq \$b 返回true\n");
}
else
{
    print("\$a eq \$b 返回false\n");
}

if($a ne $b)
{
    print("\$a ne \$b 返回true\n");
}
else
{
    print("\$a ne \$b 返回false\n");
}

$c = $a cmp $b;
print("\$a cmp \$b 返回 $c\n");

#引号运算
print("引号运算符===================\n");

$a = 10;
$b = q{a = $a};
print("q{a = \$a} = $b\n");

$b = qq{a = $a};
print("qq{a = \$a} = $b\n");

#使用Linux的命令
$t = qx{date};
print("qx{date} = $t\n");