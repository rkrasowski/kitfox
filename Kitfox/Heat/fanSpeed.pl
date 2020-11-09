#!/usr/bin/perl
use strict;
use warnings;
use Time::HiRes qw(usleep);

print "Program starts... !!!\n";
my $high;
my $low;




`gpio mode 23 out`;


my $file = "tmpFanSpeed.txt";


while(1)
	{
		
		open(my $fh, $file) or die "Could not open file '$file' $!";
		my $num = <$fh>;
		print "Number is $num\n";

		
		calculator($num);

		print "High is $high\n Low is $low\n\n";

		close($fh);

		for (my $i = 0; $i < 100; $i++)
			{

				`gpio write 23 1`;
				usleep($high);
				`gpio write 23 0`;
				usleep($low);
			}		
	}



#######################################################################################################################################


sub calculator()
        {
                my $num = shift;

                if ($num == 0)
                        {
                                $high = 10000;
                                $low = 0;
                        }



                if ($num == 1)
                        {
                                $high = 3800;
                                $low = 200;
                        }
                if ($num == 2)
                        {
                                $high = 3500;
                                $low = 500;
                        }
                if ($num == 3)
                        {
                                $high = 3000;
                                $low = 1000;
                        }
                if ($num == 4)
                        {
                                $high = 2500;
                                $low = 1500;
                        }
                if ($num == 5)
                        {
                                $high = 2000;
                                $low = 2000;
                        }
                if ($num == 6)
                        {
                                $high = 1500;
                                $low = 2500;
                        }
                if ($num == 7)
                        {
                                $high = 1000;
                                $low = 3000;
                        }
                if ($num == 8)
                        {
                                $high = 500;
                                $low = 3500;
                        }
                if ($num == 9)
                        {
                                $high = 250;
                                $low = 3750;
                        }
                if ($num ==10)
                        {
                                $high = 0;
                                $low = 10000;
                        }

        }


