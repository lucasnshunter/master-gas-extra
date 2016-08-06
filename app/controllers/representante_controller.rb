class RepresentanteController < ApplicationController
    skip_before_filter :verify_authenticity_token 
  def home
  end

  def pagina_teste
       @representante=Representante.new
       @tela=@representante.capturar_prox_indece_representante
       @tela2=@representante.solicitar_lista_representantes
      
  end

  def new
     @nome_da_view="Criar usuario"
     @representante=Representante.new
     
     
     
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
     @tela2=@representante.criar_representante @representante
     @tela=@representante
  end
  def show_representantes_por_estado
      @representante=Representante.new
      @tela=@representante.solicitar_lista_representantes
  end
end
