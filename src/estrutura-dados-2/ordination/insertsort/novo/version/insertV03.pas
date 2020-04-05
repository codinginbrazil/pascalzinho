program insert_sort;

{
valor: 2
dia 06/05

Nome: Wellington De Souza Silva

Método : Insert Sort

ler numeros de um arquivo texto de inteiros, ordena-los por metados de inserção, utilizando lista encadeada
e salvar em um novo arquivo tipado(texto).
}

uses crt;

type 
	Tdado = integer;
	
	Tarquivo = text; 
 
	//Input = 'input.txt';
 
	Tlista = ^Telemento;  

	Telemento = record
					dado : Tdado;
					proximo, anterior : Tlista;
				end;

procedure main();
var
	lista : Tlista;
	aux : Tlista;
	dado : Tdado;
	fileInput : Tarquivo;
	fileExit : Tarquivo;
	 
begin
	//Associações 
	assign(fileInput, 'input.text');
	assign(fileExit, 'exit.txt');
	
	{$i-}	// desativa o erro, não acusa o erro
	reset(fileInput);
	{$i+}
		
		if ioresult <> 0 then writeln('	Error 404. 		<<<  Not File >>>'); 
		
		rewrite(fileExit);
		
		while not(EOF(fileInput))do
		begin
			readln(fileInput, dado);
			writeln(dado);
			
			if lista = nil then
			begin
				new(lista);
				lista^.dado := dado;
				writeln(fileExit, lista^.dado);
			end else
			begin
				new(aux);
				aux^.dado := dado;
				writeln(fileExit, aux^.dado);
			end;
		end;
		
	close(fileInput);
	close(fileExit);
end;

begin
	main();
end.

