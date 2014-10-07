#|===================================================================================|	
#|                       Tube/Filter Architeture implementation                      |	
#| ================================================================================= |
#|                      Tiago R. Sampaio http://www.trsampaio.com                    |
#| ================================================================================= |
#|===================================================================================|
#######VARIÁVEIS DE USO DO SISTEMA######
$arquivo; #variável global para receber o nome do arquivo a ser lido
@conteudo; #um array que armazena o conteúdo do arquivo por linhas
$conteudo_str; #armazena todo o conteúdo do arquivo em um único string
#########IMPORT DOS COMPONENETES#########
use source; #Módulo de entrada dos dados: Lê o arquivo de texto e o armazena em memória RAM para uso do algoritmo
use single_pipe;
use multi_pipe;
use filtro0; #Limpa caracteres especiais
use filtro1; #Separa as palavras (token)
use filtro2; #Converte a string para caixa alta
use filtro3; #Ordena o vetor de palavras por ordem decrescente
use filtro4; #Filtra palavras menores que 3 caracteres
use filtro5; #Retorna a quantidade de palavras passada como entrada
use sink; #Recebe os dados através de um pipe e o prepara para a saída final do algoritmo
########################################

menu();
print "Digite os filtros desejados separados por \"|\":\n";
 $cmd = <STDIN>;
$cmd=~s/\s//g;
 @comandos=split('\|',$cmd);

######MODO SINGLE PIPE#######
	
	@last_result=single_pipe(lc $comandos[0],lc $comandos[1]);
	for($i=1;$i<$#comandos;$i++){
		@last_result=single_pipe(@last_result,lc $comandos[$i+1]);
	}

#######MODO MULTI PIPE######
#	multi_pipe(@comandos);

############################

sub menu(){
print "----------FILTROS DISPONIVEIS---------------\n";
print "PIPE: Interliga dois módulos/filtros\n";
print "SOURCE: Faz a leitura do arquivo e retorna seu conteudo\n";
print "FILTRO 0: Limpa caracteres especiais\n";
print "FILTRO 1: Separa as palavras (token)\n";
print "FILTRO 2: Converte a string para caixa alta\n";
print "FILTRO 3: Ordena o vetor de palavras por ordem decrescente\n";
print "FILTRO 4: Filtra palavras menores que 3 caracteres\n";
print "FILTRO 5: Retorna a quantidade de palavras passada como entrada\n";
print "SINK: Recebe os dados através de um pipe e o prepara para a saida final do algoritmo\n";
print "---------------------------------------------\n";
}











