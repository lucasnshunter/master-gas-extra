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
     @pdv.pdv_fantname=params[:fantname]
     @pdv.pdv_name=params[:name]
     @pdv.pdv_seguimento=params[:seguimento]
     @pdv.pdv_cpf_cnpj=params[:cpf_cnpj]
     @pdv.pdv_addr=params[:addr]
     @pdv.pdv_ad_city=params[:adcit]
     @pdv.pdv_ad_uf=params[:aduf]
     @pdv.pdv_ad_cep=params[:adcep]
     @pdv.pdv_phone=params[:phone]
     @pdv.pdv_area=params[:area]
     @pdv.pdv_bairro=params[:bairro]
     @tela= @pdv
    
  end

  def show
     @action_display_controller=2
     @nome_da_view="Criar usuario"
     @pdv=Pdv.new
     @pdv.pdv_fantname=params[:fantname]
     @pdv.pdv_name=params[:name]
     @pdv.pdv_seguimento=params[:seguimento]
     @pdv.pdv_cpf_cnpj=params[:cpf_cnpj]
     @pdv.pdv_addr=params[:addr]
     @pdv.pdv_ad_city=params[:adcit]
     @pdv.pdv_ad_uf=params[:aduf]
     @pdv.pdv_ad_cep=params[:adcep]
     @pdv.pdv_phone=params[:phone]
     @pdv.pdv_area=params[:area]
     @pdv.pdv_bairro=params[:bairro]
     @pdv.pdv_logr=params[:logr]
     @pdv.pdv_representative=params[:representative]
     @pdv.pdv_email=params[:email]
     @pdv.pdv_login=params[:login]
     @pdv.pdv_passwd=params[:passwd]
     @pdv.pdv_id=params[:id]
    
     @tela= @pdv
    
  end

  def pagina_teste
    @pdv=Pdv.new
    @tela=@pdv.capturar_prox_indece_pdv_adm
    
    
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
     
  end
  
  def show_por_representante
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
