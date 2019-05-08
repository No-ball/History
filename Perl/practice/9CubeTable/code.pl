for (my $i = 1; $i < 10; $i++){
    for (my $j = 1; $j < 10; $j++){
        for (my $k = 1; $k < 10; $k++){
            printf '%-2dx%2d x%2d =%4d ', $k, $j, $i, $i*$j*$k;
        }
        print "\n";
    }
    print "\n";
}