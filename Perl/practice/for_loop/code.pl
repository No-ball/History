for(my $i = 1; $i <= 100; $i++){
    printf "%3d ", $i;
    if($i%10 == 0){
        print "\n";
    }
}

print "---------------------------------------\n";

for(my $i = 1; $i < 10; $i++){
    for(my $j = 1; $j < 10; $j++){
        printf '%2d *%2d = %-2d ', $i, $j, $i*$j;
    }
    print "\n";
}

print "-----------------------------------------------------------------------------------------------------------\n";

for(my $i = 1; $i <= 100; $i++){
    printf "%-3d* %-3d= %-5d ", $i, $i, $i*$i;

    # print "\n"
    if($i%10 == 0){
        print "\n";
    }
}