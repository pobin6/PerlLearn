=cut
while(<>)
{
  chomp;
  #打印所有包含“print”的行
  if(/print/)
  {
    print("print：".$_);
  }
  if(/([^\s])\1/)
  {
    print($_);
  }
  if(/print.*sites|sites.*print/)
  {
    print("Matched:|$`<$&>$'|\n");
  }
  #匹配以a为结尾的单词
  if(/(?<lastA>\b\w*t\b)(?<five>.{0,4})/)
  {
    print("\$+{lastA}:     $+{lastA},\$+{five}:      $+{five}\n");
  }
  #匹配以空白结尾的行
  if(/\h$/)
  {
    print("$_\n");
    print("$` blank $&$'\n");
  }
}
$_ = "<a>dacada</a>,<a>rionvc</a>";
$what = "da|ca";
m/($what){3}/;
#s#<a>.*</a>#$1#g;
print("Matched:|$`----$&-----$'|\n");
print($_);
=cut
$^I = ".out";
while(<>)
{
  s/print/say/g;
  print($_);
}