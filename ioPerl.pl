#@ARGV = qw# larry moe curly #;#要读取的文件列表，有多少读多少
while(<>)
{
  @arr[@arr+1] = $_;
}
for($i = @arr;$i>0;$i--)
{
  print(@arr[$i-1]);
}