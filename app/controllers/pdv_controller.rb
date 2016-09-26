class PdvController < ApplicationController
  skip_before_filter :verify_authenticity_token  
  
  
  def pagina_teste
    @pdv=Pdv.new
    @tela3=@pdv.solicitar_dados_pdv_adm_cpf
    
  end
  
  
  
  def home
  end

  def index
  end

  def new
    @contexto_pagina="Criar cadastro de PDV"
    
    @contexto_action="show" 
  end

  def show
     @action_display_controller=2
     @nome_da_view="Criar usuario"
     @pdv=Pdv.new
     #dados logicos da aplicação
     @pdv.pdv_id=@pdv.capturar_prox_indece_pdv_adm
     @pdv.pdv_representative=-1
     #dados cadastrais e de  3
     @pdv.pdv_fantname=params[:fantname]
     @pdv.pdv_name=params[:name]
     @pdv.pdv_cpf_cnpj=params[:cpf_cnpj]
    
     #dados de contato 3
     @pdv.pdv_ddd=params[:ddd]
     @pdv.pdv_phone=params[:phone]
     @pdv.pdv_email=params[:email]
     #dados de endereço e localização 7
     @pdv.pdv_addr=params[:addr]
     @pdv.pdv_ad_city=params[:cidade]
     @pdv.pdv_ad_uf=params[:uf]
     @pdv.pdv_ad_cep=params[:cep]
     @pdv.pdv_area=params[:area]
     @pdv.pdv_bairro=params[:bairro]
     @pdv.pdv_logr=params[:rua]
     #logica de criação do cadastro
     @pdv.criar_adm_pdv @pdv
     @tela= @pdv.solicitar_dados_pdv_adm_cpf @pdv.pdv_cpf_cnpj
     
  end
  def atualizar
    @pdv=Pdv.new
    id=params[:id]
    
    @tela=@pdv.solicitar_dados_pdv_adm id
  end
  
  def atualizado
     @action_display_controller=2
     @nome_da_view="Criar usuario"
     @pdv=Pdv.new
     #dados logicos da aplicação
     @pdv.pdv_id=params[:id]
     @pdv.pdv_representative=-1
     #dados cadastrais e de  3
     @pdv.pdv_fantname=params[:fantname]
     @pdv.pdv_name=params[:name]
     @pdv.pdv_cpf_cnpj=params[:cpf_cnpj]
     #dados do negocio e saldo 3
     @pdv.pdv_seguimento=params[:seguimento]
     @pdv.pdv_saldo=params[:saldo]
     @pdv.pdv_comicao=params[:comicao]
     #dados de contato 3
     @pdv.pdv_ddd=params[:ddd]
     @pdv.pdv_phone=params[:phone]
     @pdv.pdv_email=params[:email]
     #dados de endereço e localização 7
     @pdv.pdv_addr=params[:addr]
     @pdv.pdv_ad_city=params[:adcit]
     @pdv.pdv_ad_uf=params[:uf]
     @pdv.pdv_ad_cep=params[:adcep]
     @pdv.pdv_area=params[:area]
     @pdv.pdv_bairro=params[:bairro]
     @pdv.pdv_logr=params[:logr]
     @tela=@pdv.solicitar_dados_pdv_adm @pdv.pdv_id if @pdv.atualizar_adm_pdv @pdv

  end
  def excluir
    @pdv=Pdv.new
    id=params[:id]
    @tela= @pdv.excluir_pdv_adm id
    
  end
 
  

  
  def listar_por_representante
  end
  
  def listar_por_regiao
  end
  
  def show_por_regiao
     @pdv=Pdv.new
     @ddd=params[:ddd]
     @tela=@pdv.solicitar_lista_pdvs @ddd
     
  end
  
  def show_por_representante
  end
  
  def exibir
    @pdv=Pdv.new
    pdv_id=params[:id]
    @tela=@pdv.solicitar_dados_pdv_adm pdv_id
  end
  
  #######################################
  #Inicio dos metodos de gerencia de PDV#
  #######################################
  def gerenciar
    @pdv=Pdv.new
    @id=params[:id]
    @tela=@pdv.solicitar_dados_pdv_adm @id
    
  end
  def gerenciado
    @pdv=Pdv.new
    
    @sell_gas=params[:sell_gas]#resolvido
    @sell_agua=params[:sell_agua]#resolvido
    @sell_cell=params[:sell_cell]#resolvido
    @limit_saldo_agua=params[:limit_saldo_agua]#resolvido
    @limit_saldo_gas=params[:limit_saldo_gas]#resolvido
    @percent_agua=params[:percent_agua]#resolvido
    @percent_gas=params[:percent_gas]#resolvido
    @pdv_id=params[:pdv_id]#resolvido
    @phonepos=params[:phonepos]#resolvido
    @status=params[:status]#resolvido
    
    @tela_teste=@pdv.configurar_pdv @pdv_id,@limit_saldo_agua,@limit_saldo_gas,@percent_agua,@percent_gas,@sell_agua,@sell_gas,@sell_cell,@phonepos,@status
    @tela=@pdv.solicitar_dados_pdv_adm @pdv_id
    
  end
  
  
  
  
  ##########################################################
  #Inicio dos metodos das funções relacionadas a relatorios#
  ##########################################################
  
  def relatorios
    
  end
 
  
  def relatorios_unitarios
    @pdv=Pdv.new
    @pdv_=params[:pdv_id]
   
    
  end
  

  
  def regime_pesquisa
    @pdv=Pdv.new
    @pdv_=params[:pdv]
    @tipo_relatorio=params[:tipo_relatorio]
    
  end
  
  def regime_pesquisa_global
    @pdv=Pdv.new
    @tipo_relatorio=params[:tipo_relatorio]
    
  end
  
  def relatorio_detalhado
    @calendario=Calendario.new
    @pdv=Pdv.new
    @calendario=Calendario.new
    @data_inicio=params[:data_inicio]
    @data_fim=params[:data_fim]
    @pdv_=params[:pdv]
    @tipo_relatorio=params[:tipo_relatorio]
    @entrada=params[:entrada].to_i
    @parametros_relatorio=@calendario.mes_anterior if @entrada==1
    @parametros_relatorio=@calendario.mes_atual if @entrada==2
    @parametros_relatorio=@calendario.ultimos_30_dias if @entrada==3
    @parametros_relatorio=@calendario.ultimos_3_meses if @entrada==4
    @parametros_relatorio=@calendario.ultimo_ano if @entrada==5
    @parametros_relatorio=@calendario.data_livre @data_inicio,@data_fim if @entrada==6
    @tela2=@parametros_relatorio
    @tela=@pdv.solicitar_lista_vendas_cell_pdv @pdv_,@parametros_relatorio[0],@parametros_relatorio[1] if @tipo_relatorio=="cell"
    @tela=@pdv.solicitar_lista_vendas_gas_pdv @pdv_,@parametros_relatorio[0],@parametros_relatorio[1] if @tipo_relatorio=="gas"
    @tela=@pdv.solicitar_lista_vendas_agua_pdv @pdv_,@parametros_relatorio[0],@parametros_relatorio[1] if @tipo_relatorio=="agua"
    @contexto_produto=@tipo_relatorio
   
  end
  def relatorio_global
    @calendario=Calendario.new
    @pdv=Pdv.new
    @calendario=Calendario.new
    @data_inicio=params[:data_inicio]
    @data_fim=params[:data_fim]
    @tipo_relatorio=params[:tipo_relatorio]
    @contexto_produto=@tipo_relatorio
    @entrada=params[:entrada].to_i
    @parametros_relatorio=@calendario.mes_anterior if @entrada==1
    @parametros_relatorio=@calendario.mes_atual if @entrada==2
    @parametros_relatorio=@calendario.ultimos_30_dias if @entrada==3
    @parametros_relatorio=@calendario.ultimos_3_meses if @entrada==4
    @parametros_relatorio=@calendario.ultimo_ano if @entrada==5
    @parametros_relatorio=@calendario.data_livre @data_inicio,@data_fim if @entrada==6
    @tela2=@parametros_relatorio
    @tela=@pdv.solicitar_lista_vendas_cell_pdv_global @parametros_relatorio[0],@parametros_relatorio[1] if @tipo_relatorio=="cell"
    @tela=@pdv.solicitar_lista_vendas_gas_pdv_global @parametros_relatorio[0],@parametros_relatorio[1] if @tipo_relatorio=="gas"
    @tela=@pdv.solicitar_lista_vendas_agua_pdv_global @parametros_relatorio[0],@parametros_relatorio[1] if @tipo_relatorio=="agua"
    
  end
end
