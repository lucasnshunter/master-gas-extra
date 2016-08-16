class RepresentanteController < ApplicationController
    skip_before_filter :verify_authenticity_token 
  def home
  end

  def pagina_teste
       @representante=Representante.new
       @tela=@representante.capturar_prox_indece_representante
       
     
  end

  def new
      @contexto_action="show"
      @contexto_name="representante"
      @contexto_pagina="Cadaastrar Representante Admin"
     
     
     
  end

  def index
     
      
  end

  def relatorio
  end
  
  def show
     
     @nome_da_view="Criar usuario"
     @representante=Representante.new
     
     #função logica para o bancod de dados
     @representante.representante_id=@representante.capturar_prox_indece_representante
     
     #dados cadastrais pessoais do usuario
     @representante.representante_fantname=params[:fantname]
     @representante.representante_name=params[:name]
     @representante.representante_cpf_cnpj=params[:cpf_cnpj]
     
     #contato
     @representante.representante_ddd=params[:ddd]
     @representante.representante_phone=params[:phone]
     @representante.representante_email=params[:email]
     
     #endereço
     @representante.representante_ad_cep=params[:adcep]
     @representante.representante_addr=params[:addr]
     @representante.representante_bairro=params[:bairro]
     @representante.representante_area=params[:area]
     @representante.representante_logradouro=params[:logr]
     @representante.representante_ad_city=params[:adcit]
     @representante.representante_ad_uf=params[:estado]
    
    
     @representante.criar_representante @representante
     @tela= @representante.solicitar_dados_representante_cpf @representante.representante_cpf_cnpj
  end
  def show_representantes_por_ddd
      @representante=Representante.new
      @ddd=params[:ddd]
      @tela=@representante.solicitar_lista_representantes @ddd
      
  end
  
  def show_representante
      @id=params[:id]
      @representante=Representante.new
      @tela=@representante.solicitar_dados_representante @id
      
  end
  def excluir
      @representante=Representante.new
      representante_id=params[:id]
     # @tela=@representante.solicitar_dados_representante representante_id
      @tela2=@representante.excluir_representante representante_id
  end
end









