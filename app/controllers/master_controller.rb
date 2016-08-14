class MasterController < ApplicationController
  def dashboard
    @master=Master.new
    @data=Datacao.new
    @tela=@data.ultimo_ano
  end

  def pagina_teste
  end
end
