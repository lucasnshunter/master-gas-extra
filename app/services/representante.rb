class Representante
    #função logica no banco de dados
    attr_accessor :representante_id
    #dados pessoais cadastrais
    attr_accessor :representante_fantname
    attr_accessor :representante_name
    attr_accessor :representante_cpf_cnpj
    #contato
    attr_accessor :representante_ddd
    attr_accessor :representante_phone
    attr_accessor :representante_email
    #endereço
    attr_accessor :representante_ad_cep
    attr_accessor :representante_addr
    attr_accessor :representante_area
    attr_accessor :representante_bairro
    attr_accessor :representante_logradouro
    attr_accessor :representante_ad_city
    attr_accessor :representante_ad_uf
    
    
    
    
    
    def testar_classe
        teste="a classe funciona"
        teste
    end
    
    def capturar_prox_indece_representante
       servidor=Server.new    
       resp=servidor.capturar_prox_indece_representante
       resp
    end
    
    def solicitar_lista_representantes
        servidor=Server.new
        resp=servidor.solicitar_lista_representantes
        resp
    end
    
    def criar_representante representante
        servidor=Server.new
        resp=servidor.criar_representante representante
        resp
    end
    
end

