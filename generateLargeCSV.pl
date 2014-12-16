my $filename = "small-multi-line";
my $suffix = ".xls";
my $number_of_files = 2;
my $number_of_lines = 10;
my $all_on_one_line = 0;


my $end = $all_on_one_line ? "," : "\n";

for (my $j = 1 ; $j < $number_of_files + 1; $j++){
  open my $fh, ">", "$filename$j$suffix" or die "could not open $filename$j$suffix: $!\n";
    for (my $i = 0 ; $i < $number_of_lines; $i++){
      print $fh "1,2,3,4,5,6,7,8,9,test$end";
    }
  close $fh or die "could not close $filename$j$suffix\n";
}
