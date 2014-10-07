

sub single_pipe(@){
	#print "\na:$_[0]\n";
	#print "b:$_[1]\n";
	#print "tam: ",scalar @_,"\n";
	#print "_: @_\n\n";
	if (length $_[0] <= 10 && length $_[0] > 3 && scalar @_ == 2){
		#@out_filtro=&{\&{$_[0]}}(@out_filtro);
		$nome_da_funcao1=$_[0];
		@out_filtro=&$nome_da_funcao1(@out_filtro);
		print $_[0];
	}
		
	print " -> TUBO -> $_[$#_]";
	$nome_da_funcao2=$_[$#_];
	@out_filtro=&$nome_da_funcao2(@out_filtro);	
	return @out_filtro;
}

1;