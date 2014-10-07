sub multi_pipe(@){
	local @last;
	for(my $i=0;$i<scalar @_;$i++){
		#print "l: @last\n";
		$nome_da_funcao=$_[$i];
		@last=&$nome_da_funcao(@last);		
		if($_[$i] ne "sink"){
			print "$_[$i] <- TUBO -> ";
		}
	}
}

1;