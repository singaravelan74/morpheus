write-output "Hello World test1"
$var = "<%=results.fn68355_1%>"

write-output "task1 result is $var"
if($var.trim() -eq "yes")
{
	"previos result is yes"
}
else
{
	"no previous result returned"
}
