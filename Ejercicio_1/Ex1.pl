#!/usr/bin/env/perl

use strict;
use Bio::SeqIO;

my $usage = "Ex1.pl <file>.gb";
my $file = shift or die $usage;

my $io_obj = Bio::SeqIO->new(-file => "$file", -format => "genbank");
my $outseq = Bio::SeqIO->new(-format => "fasta", -file => ">out_nlrp1.fas");

my $seq = $io_obj->next_seq;

my @proteins = ();

# Get the 3 frames translation in the original direction.
for(my $frame = 0; $frame <=2; $frame++)
{ 
    my $frame_proteins = $seq->translate(-frame=>$frame);
    push @proteins, $frame_proteins;
}

# Get the 3 frames translation in the reverse complementary direction.
for(my $frame = 0; $frame <=2; $frame++) {
    my $reverse_frame_proteins = $seq->revcom->translate(-frame=>$frame);
    push @proteins, $reverse_frame_proteins;   
}


for(my $i = 0; $i <= 5; $i++) {
    my $protein = @proteins[$i];
    my $aaseq = $protein->seq;

    my $sequence_number = $i + 1;

    if ($aaseq =~ /(M.*?)\*/) # Begins with Methionine
    {
        my $seqObject = Bio::Seq->new(-display_id => "sequence_$sequence_number", -seq => "$1");
        $outseq->write_seq($seqObject);
    }
}