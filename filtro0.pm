sub filtro0(@){ #Limpa caracteres especiais
	my $input = $_[0];
	$input =~ s/[.,:()|"'´`~=+-\/]*//g;
	return $input;
}

1;