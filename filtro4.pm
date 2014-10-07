sub filtro4(@){ #Filtra palavras menores que 3 caracteres
	my @output;
	foreach my $str (@_){
		if(length $str < 3){
			$output[scalar @output]=$str;
		}
	}
	return @output;
}

1;