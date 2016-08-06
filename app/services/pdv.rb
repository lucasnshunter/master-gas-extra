class Pdv
    
    attr_accessor :pdv_fantname
    attr_accessor :pdv_cpf_cnpj
    attr_accessor :pdv_name
    attr_accessor :pdv_seguimento
    attr_accessor :pdv_addr
    attr_accessor :pdv_bairro
    attr_accessor :pdv_area
    attr_accessor :pdv_ad_city
    attr_accessor :pdv_ad_uf
    attr_accessor :pdv_ad_cep
    attr_accessor :pdv_phone
    attr_accessor :pdv_id#novo
    attr_accessor :pdv_representative#novo
    attr_accessor :pdv_email#novo
    attr_accessor :pdv_login#novo
    attr_accessor :pdv_passwd#novo
    attr_accessor :pdv_logr#novo
   
    def testar_classe
        servidor=Server.new
        resp=servidor.testar_classe
        resp 
    end
    
    def capturar_prox_indece_pdv_adm
        servidor=Server.new
        resp=servidor.capturar_prox_indece_pdv_adm
        resp
    
    end
    
    def verificar_status_pdv
        servidor=Server.new
        resp=servidor.verificar_status_pdv
        resp 
        
    end
    def ultimo_ano
        data=Time.now
        data.year=data.year-1
        data
    end
   
end