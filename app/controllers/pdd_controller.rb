class PddController < ApplicationController
  skip_before_filter :verify_authenticity_token  
  def home
  end

  def new
      @contexto_action="show"
      @contexto_pagina="Cadaastrar PDD Admin"
  end

  def show
    @action_display_controller=2
     @nome_da_view="Criar usuario"
     @pdd=Pdd.new
     @gps=Gps.new
     
     #dados logicos da aplicação
     @pdd.pdd_id=@pdd.capturar_prox_indece_pdd_adm
     @pdd.pdd_representative=-1
     #dados cadastrais e de  3
     @pdd.pdd_fantname=params[:fantname]
     @pdd.pdd_name=params[:name]
     @pdd.pdd_cpf_cnpj=params[:cpf_cnpj]
     
     #dados de contato 3
     @pdd.pdd_ddd=params[:ddd]
     @pdd.pdd_phone=params[:phone]
     @pdd.pdd_email=params[:email]
     #dados de endereço e localização 7
     @pdd.pdd_addr=params[:addr]
     @pdd.pdd_ad_city=params[:cidade]
     @pdd.pdd_ad_uf=params[:uf]
     @pdd.pdd_ad_cep=params[:cep]
     @pdd.pdd_bairro=params[:bairro]
     @pdd.pdd_logr=params[:rua]
     #daddos para Geolocalização
     @gps.gps_endereco=params[:addr]
     @gps.gps_logr=params[:rua]
     @gps.gps_bairro=params[:bairro]
     @gps.gps_cidade=params[:cidade]
     @gps.gps_estado=params[:uf]
     @geolocalizacao=@gps.solicitar_geolocalizacao @gps
     #setando os dados de GPS
     @pdd.pdd_usr_lat=@geolocalizacao['lat']
     @pdd.pdd_usr_lon=@geolocalizacao['lon']
     #logica de criação do cadastro
     @pdd.criar_adm_pdd @pdd
     @tela= @pdd.solicitar_dados_pdd_adm_cpf @pdd.pdd_cpf_cnpj
    
  end

  def index
  end

  def relatorios
  end

  def pagina_teste
      @pdd=Pdd.new
      @tela=@pdd.excluir_pdd_adm
  end
  
  
  def show_por_regiao
     @pdd=Pdd.new
     @ddd=params[:ddd]
     @tela=@pdd.solicitar_lista_pdds @ddd
  end
  
  def show_por_representante
  end
  def exibir
      @pdd=Pdd.new
      pdd_id=params[:id]
      @tela=@pdd.solicitar_dados_pdd_adm pdd_id
  end
  
  def atualizar
    @pdd=Pdd.new
    id=params[:id]
    
    @tela=@pdd.solicitar_dados_pdd_adm id
  end
  
  def atualizado
     @action_display_controller=2
     @nome_da_view="atualizar"
     @pdd=Pdd.new
     @gps=Gps.new
     #dados logicos da aplicação
     @pdd.pdd_id=params[:id]
     @pdd.pdd_representative=-1
     #dados cadastrais e de  3
     @pdd.pdd_fantname=params[:fantname]
     @pdd.pdd_name=params[:name]
     @pdd.pdd_cpf_cnpj=params[:cpf_cnpj]
     #dados de contato 3
     @pdd.pdd_ddd=params[:ddd]
     @pdd.pdd_phone=params[:phone]
     @pdd.pdd_email=params[:email]
     #dados de endereço e localização 7
     @pdd.pdd_addr=params[:addr]
     @pdd.pdd_ad_city=params[:adcit]
     @pdd.pdd_ad_uf=params[:uf]
     @pdd.pdd_ad_cep=params[:adcep]
     @pdd.pdd_bairro=params[:bairro]
     @pdd.pdd_logr=params[:logr]
     
     #daddos para Geolocalização
     @gps.gps_endereco=params[:addr]
     @gps.gps_logr=params[:logr]
     @gps.gps_bairro=params[:bairro]
     @gps.gps_cidade=params[:adcit]
     @gps.gps_estado=params[:uf]
     @geolocalizacao=@gps.solicitar_geolocalizacao @gps
     #setando os dados de GPS
     @pdd.pdd_usr_lat=@geolocalizacao['lat']
     @pdd.pdd_usr_lon=@geolocalizacao['lon']
     #logica de atualização de cadastro
     @tela= @pdd.solicitar_dados_pdd_adm @pdd.pdd_id if @pdd.atualizar_adm_pdd @pdd
     #@tela=@pdv.solicitar_dados_pdv_adm @pdv.pdv_id if @pdv.atualizar_adm_pdv @pdv
  end
  def excluir
      @pdd=Pdd.new
      pdd_id=params[:id]
      @tela=@pdd.excluir_pdd_adm pdd_id
  end
  
  #######################################
  #Inicio dos metodos de gerencia de PDV#
  #######################################
  def gerenciar
    @pdd=Pdd.new
    @id=params[:id]
    @tela=@pdd.solicitar_dados_pdd_adm @id
    
  end
  def gerenciado
    @pdd=Pdd.new
    @credito_gas=params[:credito_gas]#feito
    @credito_agua=params[:credito_agua]#feito
    @sell_gas=params[:sell_gas]#resolvido
    @sell_agua=params[:sell_agua]#resolvido
    @custo_agua=params[:custo_agua]#resolvido
    @custo_gas=params[:custo_gas]#resolvido
    @pdd_id=params[:pdd_id]#resolvido
    @phonepos=params[:phonepos]#resolvido
    @status=params[:status]#resolvido
    
    @tela_teste=@pdd.configurar_pdd @pdd_id,@credito_gas,@credito_agua,@custo_gas,@custo_agua,@sell_agua,@sell_gas,@phonepos,@status
    @tela=@pdd.solicitar_dados_pdd_adm @pdd_id
    
  end
  
  def relatorios_unitarios
  @pdd=Pdd.new      
  @pdd_=params[:pdd_id]
      
  end
  
  def regime_pesquisa
    @pdd=Pdd.new
    @pdd_=params[:pdd]
    @tipo_relatorio=params[:tipo_relatorio]
    
  end
  
  def regime_pesquisa_global
    @pdv=Pdv.new
    @tipo_relatorio=params[:tipo_relatorio]
    
  end
  
  def relatorio_detalhado
    @calendario=Calendario.new
    @pdd=Pdd.new
    @calendario=Calendario.new
    @data_inicio=params[:data_inicio]
    @data_fim=params[:data_fim]
    @pdd_=params[:pdd]
    @tipo_relatorio=params[:tipo_relatorio]
    @entrada=params[:entrada].to_i
    @parametros_relatorio=@calendario.mes_anterior if @entrada==1
    @parametros_relatorio=@calendario.mes_atual if @entrada==2
    @parametros_relatorio=@calendario.ultimos_30_dias if @entrada==3
    @parametros_relatorio=@calendario.ultimos_3_meses if @entrada==4
    @parametros_relatorio=@calendario.ultimo_ano if @entrada==5
    @parametros_relatorio=@calendario.data_livre @data_inicio,@data_fim if @entrada==6
    @tipo_relatorio="WATER" if @tipo_relatorio=="agua"
    @tipo_relatorio="GAS" if @tipo_relatorio=="gas"
    @tela2=@parametros_relatorio
    @tela=@pdd.solicitar_lista_entregas_pdd @pdd_,@tipo_relatorio,@parametros_relatorio[0],@parametros_relatorio[1] 
   
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
