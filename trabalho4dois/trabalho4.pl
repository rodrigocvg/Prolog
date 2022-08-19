:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).
:- use_module(library(http/html_write)).
:- use_module(library(http/html_head)).
:- use_module(library(http/http_server_files)).
:- use_module(library(http/http_client)).
:- use_module(library(http/http_parameters)).

:- use_module('E:/Prolog/trabalho4dois/backend/bd/convidado', []).

servidor(Porta) :-
    http_server(http_dispatch, [port(Porta)]).

:- http_handler(root(.), home , []).
:- http_handler(root(convidado), convidado , []).
:- http_handler(root(dependente), dependente , []).
:- http_handler(root(reservas_canceladas), reservas_canceladas , []).
:- http_handler(root(dadosConvidado), lista , []). 


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

lista(_):-
    reply_html_page(
        boot5rest,
        [ title('convidados')],
        [ div(class(container),
              [ \html_requires(css('entrada.css')),
              	\html_requires(css('custom.css')),
                \html_requires('rest.js'),
                \html_requires('trabalho4.js'),
                \tabela_de_convidados,
                \retorna_home
              ])
              ]).

tabela_de_convidados -->
    html(div(class('container-fluid py-3'),
             [ \cabeca_da_tabela('Convidados', 'convidado'),
               \tabela
             ]
            )).


cabeca_da_tabela(Titulo,Link) -->
    html( div(class('d-flex'),
              [ div(class('me-auto p-2'), h2(b(Titulo))),
                div(class('p-2'),
                    a([ href(Link), class('btn btn-primary')],
                      'Novo'))
              ]) ).


tabela -->
    html(div(class('table-responsive-md'),
             table(class('table table-striped w-100'),
                   [ \cabecalho,
                     tbody(\corpo_tabela)
                   ]))).

cabecalho -->
    html(thead(tr([ th([scope(col)], '#'),
                    th([scope(col)], 'ID Convidado'),
                    th([scope(col)], 'Nome'),
                    th([scope(col)], 'Rg e CPF')
                  ]))).



corpo_tabela -->
    {
        findall( tr([th(scope(row), Ra), td(IdConv), td(Nome), td(RgCpf)]),
                 linha(Ra, IdConv, Nome, RgCpf),
                 Linhas )
    },
    html(Linhas).


linha(Ra, IdConv, Nome, RgCpf):-
    convidado:convidado(Ra, IdConv, Nome,RgCpf).

retorna_home --> 
	 html(div(class(row), a([ class(['btn', 'btn-primary']),href('/')],'Voltar para o início') )).