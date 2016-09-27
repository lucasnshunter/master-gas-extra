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
    attr_accessor :representante_ad_city
    attr_accessor :representante_ad_uf
    attr_accessor :representante_ad_cep
    attr_accessor :representante_area
    attr_accessor :representante_bairro
    attr_accessor :representante_logr
    
    
    
    
    
    def testar_classe
        teste="a classe funciona"
        teste
    end
    
    def capturar_prox_indece_representante
       servidor=Server.new    
       resp=servidor.capturar_prox_indece_representante
       resp
    end
    
    def solicitar_lista_representantes ddd
        servidor=Server.new
        resp=servidor.solicitar_lista_representantes ddd
        resp
    end
    
    def solicitar_dados_representante representante_id
        servidor=Server.new
        resp=servidor.solicitar_dados_representante representante_id
        resp
    end
    
    def solicitar_dados_representante_cpf representante_cpf_cnpj
        servidor=Server.new
        resp=servidor.solicitar_dados_representante_cpf representante_cpf_cnpj
        resp
    end
    
    def criar_representante representante
        servidor=Server.new
        resp=servidor.criar_representante representante
        resp
    end
    
    def atualizar_representante representante
        servidor=Server.new
        resp=servidor.atualizar_representante representante
        resp
    end
    
    def excluir_representante representante_id
        servidor=Server.new
        resp=servidor.excluir_representante representante_id
        resp
    end
end

