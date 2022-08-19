:- load_files([ ambientes,
                categoria_ambiente,
                convidado,
                dependente,
                imagens_ambiente,
                reservas_canceladas,
                reservas_has_convidados,
                reservas,
                usuarios,
                estados
              ],
	          [ if(not_loaded), % só carrega o módulo uma vez
                silent(true) % carrega o módulo sem imprimir mensagem
	          ]).

junta(Idamb,Id_cat_amb,Amb_dsc,Hora_i,Hora_t,Temp_r,Qtd_c, Id_cat_amb,Cat_desc_cat_amb,Cat_end_img, IdConv,Nome,RgCpf, 
IdUser,IdDep,Nome,Email,DataNasc,Sexo,Cpf,End,Cep,Bairro,Cidade,Estado,Tel,Login,Senha,PrimeiroAcesso, Id_img,Id_amb,Ima_end_img,
Id,Data,Hora,IdAmb,IdUs,Just,DateTime,UsExcl,ResUsuIdRes,ResHoraRes,ResDataRes,ResAmIdAm,ResIdRes,CovIdConv, 
IdRes,IdAmb,DataRes,HoraRes,Idusu,ResDesc,ResDate,ResUderincl,ResDataalte,ResUserAlte, 
IdUsu,UsuNome,UsuEmail,UsuDatanasc,UsuSexo,UsuCpf,UsuEnd,UsuCep,UsuBairro,UsuCid,IdEstado,UsuTele,UsuLog,UsuSen,UsuPrivi,UsuPrimei,UsuAtivo,
Id_estad,Uf,Estado):- 
        ambientes(Idamb,Id_cat_amb,Amb_dsc,Hora_i,Hora_t,Temp_r,Qtd_c),
        categoria_ambiente(Id_cat_amb,Cat_desc_cat_amb,Cat_end_img),
        convidado(IdConv,Nome,RgCpf),
        dependente(IdUser,IdDep,Nome,Email,DataNasc,Sexo,Cpf,End,Cep,Bairro,Cidade,Estado,Tel,Login,Senha,PrimeiroAcesso),
        imagens_ambiente(Id_img,Id_amb,Ima_end_img),
        reservas_canceladas(Id,Data,Hora,IdAmb,IdUs,Just,DateTime,UsExcl),
        reservas_has_convidados(ResUsuIdRes,ResHoraRes,ResDataRes,ResAmIdAm,ResIdRes,CovIdConv),
        reservas(IdRes,IdAmb,DataRes,HoraRes,Idusu,ResDesc,ResDate,ResUderincl,ResDataalte,ResUserAlte),
        usuarios(IdUsu,UsuNome,UsuEmail,UsuDatanasc,UsuSexo,UsuCpf,UsuEnd,UsuCep,UsuBairro,UsuCid,IdEstado,UsuTele,UsuLog,UsuSen,UsuPrivi,UsuPrimei,UsuAtivo),
        estados(Id_estad,Uf,Estado).
   

