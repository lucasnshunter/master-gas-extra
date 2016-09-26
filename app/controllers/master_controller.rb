class MasterController < ApplicationController
   skip_before_filter :verify_authenticity_token  
  def dashboard
  
    @data_inicio=params[:data_inicio]
    @data_fim=params[:data_fim]
    @calendario=Calendario.new
    @tela=@calendario.data_livre @data_inicio,@data_fim
    @tela2=@calendario.mes_anterior  
    @tela3=@calendario.mes_atual
    @tela4=@calendario.ultimos_3_meses
    @tela5=@calendario.ultimos_30_dias
    @tela6=@calendario.ultimo_ano
    
  end
  
  def pagina_teste
 
    
    
  end
end
