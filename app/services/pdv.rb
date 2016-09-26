class Pdv
    #dados logicos
    attr_accessor :pdv_id#novo
    attr_accessor :pdv_representative#novo
    #dados de identificação cadastral
    attr_accessor :pdv_fantname
    attr_accessor :pdv_cpf_cnpj
    attr_accessor :pdv_name
    #dados de seguimento e negocio
    attr_accessor :pdv_seguimento
    attr_accessor :pdv_saldo
    attr_accessor :pdv_comicao   
    #dados de contato
    attr_accessor :pdv_ddd
    attr_accessor :pdv_phone
    attr_accessor :pdv_email#novo
    #dados de endereço
    attr_accessor :pdv_addr
    attr_accessor :pdv_bairro
    attr_accessor :pdv_logr#novo
    attr_accessor :pdv_area
    attr_accessor :pdv_ad_city
    attr_accessor :pdv_ad_uf
    attr_accessor :pdv_ad_cep
   
   
    def testar_classe
        servidor=Server.new
        resp=servidor.testar_classe
        resp
        #função ok
    end
    
    def capturar_prox_indece_pdv_adm
        servidor=Server.new
        resp=servidor.capturar_prox_indece_pdv_adm
        resp
    #função ok
    end
    
    def criar_adm_pdv pdv
        servidor=Server.new
        resp=servidor.criar_adm_pdv pdv
        resp
    #função ok    
    end
    def solicitar_lista_pdvs ddd
        servidor=Server.new
        resp=servidor.solicitar_lista_pdvs ddd
        resp
    #função ok
    end
    
    def solicitar_dados_pdv_adm pdv_id
        servidor=Server.new
        resp=servidor.solicitar_dados_pdv_adm pdv_id
        resp
    #função ok
    end
    def solicitar_dados_pdv_adm_cpf pdv_cpf_cnpj
        servidor=Server.new
        resp=servidor.solicitar_dados_pdv_adm_cpf pdv_cpf_cnpj
        resp
    #função ok
    end
    
    
    def excluir_pdv_adm pdv_id
        servidor=Server.new
        resp=servidor.excluir_pdv_adm pdv_id
        resp
    #função ok    
    end
    
    def atualizar_adm_pdv pdv
        servidor=Server.new
        resp=servidor.atualizar_adm_pdv pdv
        resp
    #função ok    
    end
    #relatorios unitarios
    def solicitar_lista_vendas_cell_pdv pdv,start_date,end_date
       servidor=Server.new
       resp=servidor.solicitar_lista_vendas_cell_pdv pdv,start_date,end_date
       resp
      
    end
    def solicitar_lista_vendas_agua_pdv pdv,start_date,end_date
       servidor=Server.new
       resp=servidor.solicitar_lista_vendas_agua_pdv pdv,start_date,end_date
       resp
      
    end
    def solicitar_lista_vendas_gas_pdv pdv,start_date,end_date
       servidor=Server.new
       resp=servidor.solicitar_lista_vendas_gas_pdv pdv,start_date,end_date
       resp
      
    end
    #relatorios globais
    def solicitar_lista_vendas_cell_pdv_global start_date,end_date
       servidor=Server.new
       resp=servidor.solicitar_lista_vendas_cell_pdv_global start_date,end_date
       resp
      
    end
    def solicitar_lista_vendas_agua_pdv_global start_date,end_date
       servidor=Server.new
       resp=servidor.solicitar_lista_vendas_agua_pdv_global start_date,end_date
       resp
      
    end
    def solicitar_lista_vendas_gas_pdv_global start_date,end_date
       servidor=Server.new
       resp=servidor.solicitar_lista_vendas_gas_pdv_global start_date,end_date
       resp
      
    end
    #configuração do pdv
    def configurar_pdv pdv_id,limit_saldo_agua,limit_saldo_gas,percentagua,percentgas,sellagua,sellgas,sellcell,phonepos,status
        servidor=Server.new
        resp=servidor.configurar_pdv pdv_id,limit_saldo_agua,limit_saldo_gas,percentagua,percentgas,sellagua,sellgas,sellcell,phonepos,status
        resp
        
    end
   
end