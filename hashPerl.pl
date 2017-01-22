#!/usr/bin/perl
#Program:
#       练习Perl中哈希的使用
#2017/01/22     林超      First release

#创建哈希
#1、为每个key设置value
$data{'google'} = 'google.com';
$data{'runoob'} = 'runoob.com';
$data{'taobao'} = 'taobao.com';

print("\$data{'google'} = $data{'google'}\n");
print("\$data{'runoob'} = $data{'runoob'}\n");
print("\$data{'taobao'} = $data{'taobao'}\n\n");

#2、通过列表设置
%data2 = ('google', 'google.com', 'runoob', 'runoob.com', 'taobao', 'taobao.com');

print("\$data2{'google'} = $data2{'google'}\n");
print("\$data2{'runoob'} = $data2{'runoob'}\n");
print("\$data2{'taobao'} = $data2{'taobao'}\n\n");

%data3 = ('google'=>'google.com', 'runoob'=>'runoob.com', 'taobao'=>'taobao.com');

print("\$data3{'google'} = $data3{'google'}\n");
print("\$data3{'runoob'} = $data3{'runoob'}\n");
print("\$data3{'taobao'} = $data3{'taobao'}\n\n");

%data4 = (-google => 'google.com', -runoob => 'runoob.com', -taobao => 'taobao.com');

print("\$data4{'google'} = $data4{-google}\n");
print("\$data4{'runoob'} = $data4{-runoob}\n");
print("\$data4{'taobao'} = $data4{-taobao}\n\n");

#读取哈希值
@array = @data4{-taobao, -runoob};
print("Array : @array\n");

@names = keys(%data);
print("\@names = @names\n");

@urls = values(%data);
print("\@urls = @urls\n");

#检测元素是否存在
if(exists($data{'facebook'}))
{
    print("facebook的网址为$data{'facebook'} \n");
}
else
{
    print("facebook键不存在\n");
}

#获取哈希大小
@keys = keys(%data);
$size = @keys;
print("1-哈希大小：$size\n");

@values = values(%data);
$size = @keys;
print("2-哈希大小：$size\n");

#添加元素
$data{'facebook'} = 'facebook.com';
@keys = keys(%data);
$size = @keys;
print("添加后-哈希大小：$size\n");

delete($data{'taobao'});
@keys = keys(%data);
$size = @keys;
print("删除后-哈希大小：$size\n");