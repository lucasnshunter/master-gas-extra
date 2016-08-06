class PddController < ApplicationController
  skip_before_filter :verify_authenticity_token  
  def home
  end

  def new
  end

  def show
    @nome_da_view="Criar usuario"
     @pdd=Pdd.new
     @pdd.pddfantname=params[:fantname]
     @pdd.pddname=params[:name]
     @pdd.pdd_cpf_cnpj=params[:cpf_cnpj]
     @pdd.pddaddr=params[:addr]
     @pdd.pddadcit=params[:adcit]
     @pdd.pddaduf=params[:aduf]
     @pdd.pddadcep=params[:adcep]
     @pdd.pddphone=params[:phone]
     @pdd.pddarea=params[:area]
     @pdd.pddbairro=params[:bairro]
     @tela= @pdd
  end

  def index
  end

  def relatorios
  end

  def pagina_teste
      @pdd=Pdd.new
      @tela=@pdd.capturar_prox_indece_pdd_adm
  end
  
  def show_por_regiao
  end
  
  def show_por_representante
  end
  
end
