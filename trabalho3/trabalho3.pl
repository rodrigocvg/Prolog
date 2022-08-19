:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).
:- use_module(library(http/html_write)).
:- use_module(library(http/html_head)).
:- use_module(library(http/http_server_files)).
:- use_module(library(http/http_client)).
:- use_module(library(http/http_parameters)).



servidor(Porta) :-
    http_server(http_dispatch, [port(Porta)]).

:- http_handler(root(.), home , []).
:- http_handler(root(convidado), convidado , []).
:- http_handler(root(dependente), dependente , []).
:- http_handler(root(reservas_canceladas), reservas_canceladas , []). 

home(_Pedido) :-
    reply_html_page(
        [ title('Pagina inicial')],
        [ div(class(container),
              [ h1('Tabelas trabalho 1'),
                nav(class(['nav', 'flex-column']),
                    [
					a([ class(['nav-link']),
   					 href('/convidado' )],
         			'convidado'),

                     p('
                     
                     '),
                     
					 
					 a([ class(['nav-link']),
   					 href('/dependente' )],
         			'dependente' ),
                    
                     p('
                     
                     '),

					 a([ class(['nav-link']),
   					 href('/reservas_canceladas' )],
         			'reservas_canceladas' )
		 			
                      ])
              ]) ]).


convidado(_Pedido):-
    reply_html_page(
	    title('Tabela Convidados'),
		center(
	    [ form([ action='/dadosConvidado', method='POST'],
	           [ p([],
	               [ label([for=cod],'ID:'),
		             input([name=cod, type=textarea]) ]),
		         p([],
		           [ label([for=nome],'Nome:'),
		             input([name=nome, type=textarea]) ]),
                 p([],
		           [ label([for=rgcpf],'Rg e CPF:'),
		             input([name=rgcpf, type=textarea]) ]),
		         p([],
		           input([name=submit, type=submit, value='Confirmar'],
                         [])),
						 \retorna_home
	           ])]  
	)).


dependente(_Pedido):-
    reply_html_page(
	    title('Tabela Dependente'),
		center(
	    [ form([ action='/dadosDependente', method='POST'],
	           [ p([],
	               [ label([for=idus],'ID Usuário:'),
		             input([name=idus, type=textarea]) ]),
		         p([],
		           [ label([for=iddep],'ID Dependente:'),
		             input([name=iddep, type=textarea]) ]),
                 p([],
		           [ label([for=nome],'Nome:'),
		             input([name=nome, type=textarea]) ]),
				p([],
		           [ label([for=email],'Email:'),
		             input([name=email, type=textarea]) ]),
				p([],
		           [ label([for=datanasc],'Data Nascimento:'),
		             input([name=datanasc, type=textarea]) ]),
				p([],
		           [ label([for=sexo],'Sexo:'),
		             input([name=sexo, type=textarea]) ]),
				p([],
		           [ label([for=cpf],'CPF:'),
		             input([name=cpf, type=textarea]) ]),	 
				p([],
		           [ label([for=end],'Endereço:'),
		             input([name=end, type=textarea]) ]),
				p([],
		           [ label([for=cep],'CEP:'),
		             input([name=cep, type=textarea]) ]),
				p([],
		           [ label([for=bairro],'Bairro:'),
		             input([name=bairro, type=textarea]) ]),
				p([],
		           [ label([for=cidade],'Cidade:'),
		             input([name=cidade, type=textarea]) ]),
				p([],
		           [ label([for=estado],'Estado:'),
		             input([name=estado, type=textarea]) ]),
				p([],
		           [ label([for=tel],'Telefone:'),
		             input([name=tel, type=textarea]) ]),
				p([],
		           [ label([for=login],'Login:'),
		             input([name=login, type=textarea]) ]),
				p([],
		           [ label([for=senha],'Senha:'),
		             input([name=senha, type=textarea]) ]),
				p([],
		           [ label([for=primAcess],'Primeiro Acesso:'),
		             input([name=primAcess, type=textarea]) ]),
		         p([],
		           input([name=submit, type=submit, value='Confirmar'],
                         [])),
						 \retorna_home
	           ])]  
	)).


reservas_canceladas(_Pedido):-
    reply_html_page(
	    title('Tabela Reservas Canceladas'),
		center(
	    [ form([ action='/dadosReservas_canceladas', method='POST'],
	           [ p([],
	               [ label([for=idResCan],'ID Reserva Cancelada:'),
		             input([name=idResCan, type=textarea]) ]),
		         p([],
		           [ label([for=data],'Data:'),
		             input([name=data, type=textarea]) ]),
                 p([],
		           [ label([for=hora],'Hora:'),
		             input([name=hora, type=textarea]) ]),
				p([],
		           [ label([for=idAmb],'ID Ambiente:'),
		             input([name=idAmb, type=textarea]) ]),
				p([],
		           [ label([for=idus],'ID Usuario:'),
		             input([name=idus, type=textarea]) ]),
				p([],
		           [ label([for=justificativa],'Justificativa:'),
		             input([name=justificativa, type=textarea]) ]),
				p([],
		           [ label([for=dateTime],'Date Time:'),
		             input([name=dateTime, type=textarea]) ]),
				p([],
		           [ label([for=exclUs],'Exclusão Usuário:'),
		             input([name=exclUs, type=textarea]) ]),
		         p([],
		           input([name=submit, type=submit, value='Confirmar'],
                         [])),
						 \retorna_home
	           ])]  
	)).	

/* ----------------------------------------------------------------------------------------------------- */

:- http_handler('/dadosConvidado', resp(Method),
                [ method(Method),
                  methods([post]) ]).

resp(post,Pedido) :-
	reply_html_page( title('Dados do Convidado'),
		           [ \pagina(Pedido) ]).

pagina(Pedido) -->
    {
        catch(
            http_parameters(Pedido,
                            [ 
                             cod(Id,         [integer]),
                             nome(Nome,      [string]),
							 rgcpf(RgCpf,    [integer])
                            ]),
            _E, fail), !
    },
    html([ 
		       h1('Dados do Convidado'),
           h2('Os dados recebidos são:'),
           p('O Id é ~w' - Id),
           p('Seu Nome: ~w' - Nome),
           p('Seu Rg e CPF : ~w' - RgCpf)   
         ]).
/*  --------------------------------------------------------------------------------------------------------- */


:- http_handler('/dadosDependente', resp2(Method),
                [ method(Method),
                  methods([post]) ]).

resp2(post,Pedido) :-
	reply_html_page( title('Dados do Dependente'),
		           [ \pagina2(Pedido) ]).

pagina2(Pedido) -->
    {
        catch(
            http_parameters(Pedido,
                            [ 
                             idus(IdUs,        [integer]),
                             iddep(IdDep,      [integer]),
							 nome(Nome,    [string]),
							 email(Email,    [string]),
							 datanasc(DataNasc,    [string]),
							 sexo(Sexo,    [string]),
							 cpf(CPF,    [integer]),
							 end(Endereco,    [string]),
							 cep(CEP,    [integer]),
							 bairro(Bairro,    [string]),
							 cidade(Cidade,    [string]),
							 estado(Estado,    [string]),
							 tel(Telefone,    [integer]),
							 login(Login,    [string]),
							 senha(Senha,    [string]),
							 primAcess(PrimeiroAcesso,    [integer])
                            ]),
            _E, fail), !
    },
    html([ 
		       h1('Dados do Dependente'),
           h2('Os dados recebidos sao:'),
           p('O Id do Usuario: ~w' - IdUs),
		   p('O Id do Dependente: ~w' - IdDep),
           p('Seu Nome: ~w' - Nome),
           p('Seu email: ~w' - Email),  
		   p('Sua data de nascimento é: ~w' - DataNasc),
		   p('Seu Sexo: ~w' - Sexo),
		   p('Seu CPF: ~w' - CPF),
		   p('Seu Endereço: ~w' - Endereco),
		   p('Seu CEP: ~w' - CEP),
		   p('Seu Bairro: ~w' - Bairro),
		   p('Sua Cidade: ~w' - Cidade),
		   p('Seu Estado: ~w' - Estado),
		   p('Seu Telefone: ~w' - Telefone),
		   p('Seu Login: ~w' - Login),
		   p('Sua Senha: ~w' - Senha),
		   p('Primeiro Acesso: ~w' - PrimeiroAcesso)
         ]).
/* -------------------------------------------------------------------------------- */
:- http_handler('/dadosReservas_canceladas', resp3(Method),
                [ method(Method),
                  methods([post]) ]).

resp3(post,Pedido) :-
	reply_html_page( title('Dados das Reservas canceladas'),
		           [ \pagina3(Pedido) ]).

pagina3(Pedido) -->
    {
        catch(
            http_parameters(Pedido,
                            [ 
                             idResCan(IdResC,    [integer]),
                             data(Data,      [string]),
							 hora(Hora,    [integer]),
							 idAmb(IdAmb,      [integer]),
							 idus(IdUS,      [integer]),
							 justificativa(Justificativa,      [string]),
							 dateTime(DateTime,      [string]),
							 exclUs(Exclusao,      [string])
                            ]),
            _E, fail), !
    },
    html([ 
		       h1('Dados das Reservas canceladas'),
           h2('Os dados recebidos são:'),
           p('O Id da reserva cancelada: ~w' - IdResC),
           p('A data: ~w' - Data),
           p('A hora: ~w' - Hora),
		   p('O Id do Ambiente: ~w' - IdAmb),
		   p('O Id do Usuario: ~w' - IdUS),
		   p('A justificativa: ~w' - Justificativa),
		   p('O DateTime: ~w' - DateTime),
		   p('A exclusão do Usuario: ~w' - Exclusao)
         ]).

retorna_home -->
    html(div(class(row),
             a([ class(['btn', 'btn-primary']),
                 href('/')],
               'Voltar para o início'))).