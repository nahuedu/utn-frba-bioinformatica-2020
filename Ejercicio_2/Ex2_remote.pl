use strict;
use warnings;
use Bio::Perl;

my $in = Bio::SeqIO->new(-file => "nlrp1.fas", -format => "fasta" );

while(my $seq = $in->next_seq()) {

    my $blast_result = blast_sequence($seq->seq);
    write_blast(">>report_remote.bls", $blast_result);

}