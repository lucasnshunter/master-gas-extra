class PdvController < ApplicationController
  skip_before_filter :verify_authenticity_token  
  def home
  end

  def index
  end

  def new
     @action_display_controller=2
     @nome_da_view="Criar usuario"
     @pdv=Pdv.new
     @pdv.pdvfantname=params[:fantname]
     @pdv.pdvname=params[:name]
     @pdv.pdv_cpf_cnpj=params[:cpf_cnpj]
     @pdv.pdvaddr=params[:addr]
     @pdv.pdvadcit=params[:adcit]
     @pdv.pdvaduf=params[:aduf]
     @pdv.pdvadcep=params[:adcep]
     @pdv.pdvphone=params[:phone]
     @pdv.pdvarea=params[:area]
     @pdv.pdvbairro=params[:bairro]
     @tela= @pdv
    
  end

  def show
    @nome_da_view="Criar usuario"
     @pdv=Pdv.new
     @pdv.pdvfantname=params[:fantname]
     @pdv.pdvname=params[:name]
     @pdv.pdv_cpf_cnpj=params[:cpf_cnpj]
     @pdv.pdvaddr=params[:addr]
     @pdv.pdvadcit=params[:adcit]
     @pdv.pdvaduf=params[:aduf]
     @pdv.pdvadcep=params[:adcep]
     @pdv.pdvphone=params[:phone]
     @pdv.pdvarea=params[:area]
     @pdv.pdvbairro=params[:bairro]
     @tela= @pdv
  end

  def pagina_teste
    @pdv=Pdv.new
    
  end
  
  def define_preco_gas
  end
  
  def define_preco_agua
  end
  
  def relatorios
  end
end
