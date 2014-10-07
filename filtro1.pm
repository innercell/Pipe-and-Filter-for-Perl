sub filtro1(@){ #Separa as palavras (token)
	my @a=split(' ',$_[0]);
	return @a;
}

1;