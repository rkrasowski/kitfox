#!/usr/bin/perl
use strict;
use warnings;
use Time::HiRes qw(usleep);

print "Program starts... !!!\n";

`gpio mode 23 out`;

while(1)
	{
		`gpio write 23 1`;
		usleep(2000);
		`gpio write 23 0`;
		usleep(2000);
	}
