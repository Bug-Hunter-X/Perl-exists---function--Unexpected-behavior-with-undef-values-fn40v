my %hash = ( a => 1, b => 2, c => 3 );
my $key = 'd';
if ( exists $hash{$key} ) {
    print "Key '$key' exists\n";
} else {
    print "Key '$key' does not exist\n";
    #This part will always execute even if the key exists.  The issue is that exists() only checks if the key exists in the hash and not its value.  If the value is undef, then exists() will return true which will result in unexpected behavior.
}
