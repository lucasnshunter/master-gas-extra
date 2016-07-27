class RepresentanteController < ApplicationController
    skip_before_filter :verify_authenticity_token 
  def home
  end

  def pagina_teste
  end

  def new
  end

  def index
  end

  def relatorio
  end
  
  def show
    @nome_da_view="Criar usuario"
     @representante=Representante.new
     @representante.representante_fantname=params[:fantname]
     @representante.representante_name=params[:name]
     @representante.representante_cpf_cnpj=params[:cpf_cnpj]
     @representante.representante_addr=params[:addr]
     @representante.representante_adcit=params[:adcit]
     @representante.representante_aduf=params[:aduf]
     @representante.representante_adcep=params[:adcep]
     @representante.representante_phone=params[:phone]
     @representante.representante_area=params[:area]
     @representante.representante_bairro=params[:bairro]
     @tela= @representante
  end
end
