sub filtro2(@){ #Converte a string para caixa alta
	for(local $i=0;$i<scalar @_;$i++){
		$_[$i]=uc $_[$i];
	}
	return @_;
}

1;