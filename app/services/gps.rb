class Gps
    attr_accessor :gps_endereco
    attr_accessor :gps_logr
    attr_accessor :gps_bairro
    attr_accessor :gps_cidade
    attr_accessor :gps_estado
   
   def solicitar_geolocalizacao gps
       servidor=Server.new
       resp = servidor.solicitar_geolocalizacao gps
       resp
   end
end