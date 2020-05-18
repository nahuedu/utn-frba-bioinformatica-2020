use strict;
use Bio::SeqIO;
use Bio::SearchIO;
use Bio::Tools::Run::StandAloneBlastPlus;

my $factory = Bio::Tools::Run::StandAloneBlastPlus->new(-db_data => "swissprot", -create => 1);
$factory->blastp(-query => "nlrp1.fas", -outfile => "report_local.bls");

$factory->cleanup();
