#!/usr/bin/perl

use strict;
use warnings;
use Getopt::Long;
use Net::Kubernetes;

my  $ver = '1.0';
my  ($deployment, $version, $service);

#chomp ($deployment, $version, $service);
print "============================================\n";
print "Blue-Green Deployment script, version: $ver\n";
print "Deploying application version = $ver \n";
print "============================================\n";

my $kube = Net::Kubernetes->new(url=>'http://master:8080');
my $pod_list = $kube->list_pods();

print  $pod_list; 

