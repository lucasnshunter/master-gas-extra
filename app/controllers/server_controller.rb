class ServerController < ApplicationController
  def pagina_teste
    @server=Server.new
   @tela=@server.solicitar_lista_entregas_pdd
    
  end
  
end
