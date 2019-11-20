use strict;
use warnings;
use Getopt::Long;
use Kubernetes::REST;
use Data::Dumper;

my  $ver = '1.0';
my  ($deployment, $version, $service);


chomp ($deployment, $version, $service);
print "============================================\n";
print "Blue-Green Deployment script, version: $ver\n";
print "Deploying application version = $version \n";
print "============================================\n";

my  $kubectl = Kubernetes::REST->new();
my  $result = $kubectl->Core->ListNamespacedPod();
    print Dumper($result);
print "Getting currently deployed version \n";

