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
    @contexto_name="Pdv"
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
     @pdv.pdv_ad_uf=params[:estado]
     @pdv.pdv_ad_cep=params[:adcep]
     @pdv.pdv_area=params[:area]
     @pdv.pdv_bairro=params[:bairro]
     @pdv.pdv_logr=params[:logr]
    
     
     
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
     @pdv.pdv_ad_uf=params[:estado]
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
 
  
  def define_preco_gas
  end
  
  def define_preco_agua
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
  ##########################################################
  #Inicio dos metodos das funções relacionadas a relatorios#
  ##########################################################
  
  def relatorios
    
  end
  
  def relatorios_gas
    
  end
  
  def relatorios_detalhado_vendas_gas
  
  end
  
  def relatorios_resumido_vendas_gas
  
  end
  
  def relatorios_agua
    
  end
  
  def relatorios_detalhado_vendas_agua
  
  end
  
  def relatorios_resumido_vendas_agua
  
  end
  
  def relatorios_credito_cell
  
  end
  
  def relatorios_detalhado_vendas_credito_cell
  
  end
  
  def relatorios_detalhado_vendas_credito_cell
  
  end
 
  
  
end
