sub source(){
	print "Digite o nome do arquivo de entrada: ";
	my $arquivo=<STDIN>; #Recebe a string digitada no prompt

	unless(open(FILE,"$arquivo")){ #Tratamento para inexistência do arquivo
		print "Arquivo nao encontrado!\n";
		system("pause");
		exit;
	}
	my @conteudo=<FILE>; #Armazena o arquivo num array por linhas
	close(FILE);
	my $conteudo_str=join('',@conteudo); #Converte todo o conteúdo do arquivo em uma string única
	#print "str $conteudo_str\n";
	my @last_arr= $conteudo_str;
	#print "DATA SOURCE";
	return @last_arr;
	
}

1;