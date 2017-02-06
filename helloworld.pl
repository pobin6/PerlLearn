use strict;
use warnings;
# Question:
# 这两行的含义？

# Usage
die "perl $0 <word>\n" if(@ARGV==0);
# Question:
# @ARGV==0 是啥意思？

# 接收参数
my($word) = @ARGV；
# Question:
# @ARGV是一个什么变量？

print "hello $word\n";
# Question
# print 的用法
