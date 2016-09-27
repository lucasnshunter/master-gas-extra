class Pdd
    #dados logicos
    attr_accessor :pdd_id
    attr_accessor :pdd_representative
    #dados de identificação cadastral
    attr_accessor :pdd_fantname
    attr_accessor :pdd_cpf_cnpj
    attr_accessor :pdd_name
    #dados de questões financeiras
    attr_accessor :pdd_saldo
    attr_accessor :pdd_custo   
    #dados de contato
    attr_accessor :pdd_ddd
    attr_accessor :pdd_phone
    attr_accessor :pdd_email
    #dados de endereço
    attr_accessor :pdd_addr
    attr_accessor :pdd_bairro
    attr_accessor :pdd_logr
    attr_accessor :pdd_area
    attr_accessor :pdd_ad_city
    attr_accessor :pdd_ad_uf
    attr_accessor :pdd_ad_cep
    attr_accessor :pdd_usr_lat
    attr_accessor :pdd_usr_lon
        
    def capturar_prox_indece_pdd_adm
      servidor=Server.new    
      resp=servidor.capturar_prox_indece_pdd_adm
      resp
    end
    
    def criar_adm_pdd pdd
      servidor=Server.new
      resp=servidor.criar_adm_pdd pdd
      resp
    end
    
    def solicitar_lista_pdds ddd
      servidor=Server.new
      resp=servidor.solicitar_lista_pdds ddd
      resp
    end
    
    def solicitar_dados_pdd_adm pdd_id
      servidor=Server.new
      resp=servidor.solicitar_dados_pdd_adm pdd_id
      resp
    end
    
    def solicitar_dados_pdd_adm_cpf pdd_cpf_cnpj
      servidor=Server.new
      resp=servidor.solicitar_dados_pdd_adm_cpf pdd_cpf_cnpj
      resp
    end
    def atualizar_adm_pdd pdd
      servidor=Server.new
      resp=servidor.atualizar_adm_pdd pdd
      resp
    end
    def excluir_pdd_adm pdd_id
      servidor=Server.new
      resp=servidor.excluir_pdd_adm pdd_id
      resp
    end
    def configurar_pdd pdd_id,credito_gas,credito_agua,custo_gas,custo_agua,sell_agua,sell_gas,phonepos,status
        servidor=Server.new
        resp=servidor.configurar_pdd pdd_id,credito_gas,credito_agua,custo_gas,custo_agua,sell_agua,sell_gas,phonepos,status
        
        resp
    end
    
    #solicitar relatorios de entregas
    
    def solicitar_lista_entregas_pdd pdd,kind,start_date,end_date
       servidor=Server.new
       resp=servidor.solicitar_lista_entregas_pdd pdd,kind,start_date,end_date
       resp
      
    end
    
    def solicitar_lista_entregas_pdd_global kind,start_date,end_date
       servidor=Server.new
       resp=servidor.solicitar_lista_entregas_pdd_global kind,start_date,end_date
       resp
      
    end
end

    