class PddController < ApplicationController
  skip_before_filter :verify_authenticity_token  
  def home
  end

  def new
      @contexto_action="show"
      @contexto_name="pdd"
      @contexto_pagina="Cadaastrar PDD Admin"
  end

  def show
     @action_display_controller=2
     @nome_da_view="Criar usuario"
     @pdd=Pdd.new
     #dados logicos da aplicação
     @pdd.pdd_id=@pdd.capturar_prox_indece_pdd_adm
     @pdd.pdd_representative=-1
     #dados cadastrais e de  3
     @pdd.pdd_fantname=params[:fantname]
     @pdd.pdd_name=params[:name]
     @pdd.pdd_cpf_cnpj=params[:cpf_cnpj]
     #dados do negocio e saldo 3
     @pdd.pdd_saldo=params[:saldo]
     @pdd.pdd_custo=params[:custo]
     #dados de contato 3
     @pdd.pdd_ddd=params[:ddd]
     @pdd.pdd_phone=params[:phone]
     @pdd.pdd_email=params[:email]
     #dados de endereço e localização 7
     @pdd.pdd_addr=params[:addr]
     @pdd.pdd_ad_city=params[:adcit]
     @pdd.pdd_ad_uf=params[:estado]
     @pdd.pdd_ad_cep=params[:adcep]
     @pdd.pdd_area=params[:area]
     @pdd.pdd_bairro=params[:bairro]
     @pdd.pdd_logr=params[:logr]
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
  end
  def excluir
      @pdd=Pdd.new
      pdd_id=params[:id]
      @tela=@pdd.excluir_pdd_adm pdd_id
  end
  
end
