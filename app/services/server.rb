class Server
    ######################################
    ######Metodos De teste da classe######
    ######################################
    def testar_classe
        require "rubygems"
        require 'json'
        require "net/http"
        # uri = 'http://162.243.215.24/PDV/COUNTERS_get_next';
        url="https://viacep.com.br/ws/74766050/json/"
        resp = Net::HTTP.get_response(URI.parse(url))
        resp.body
        @record=JSON.parse(resp.body)
        
    end
    
    
    #####################################################
    ######Metodos relacionados ao trabalho com PDVs######
    #####################################################
    
    def capturar_prox_indece_pdv_adm

        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
        uri = URI('http://162.243.215.24/PDV/COUNTERS_get_next')
        resp = Net::HTTP.post_form(uri,'counter'=>"pdv" )
        @record=JSON.parse(resp.body)
        @record['id']
    end
    
    def criar_adm_pdv pdv
        
        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
        
        uri=URI( 'http://162.243.215.24/PDV/PDVADMIN_register_admin')
        resp = Net::HTTP.post_form(uri)
        @record=JSON.parse(resp.body)
        
        @record
        
    end
     
    def captura_adm_pdv pdv_id
        
        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
        
        uri=URI('http://162.243.215.24/PDV/REPRES_get_pdvs')
        
        resp = Net::HTTP.post_form(uri)
        @record=JSON.parse(resp.body)
        
        @record
    end
    
    
    #####################################################
    ######Metodos relacionados ao trabalho com PDDs######
    #####################################################
    
    def capturar_prox_indece_pdd_adm

        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
       
        uri = URI( 'http://162.243.215.24/PDV/COUNTERS_get_next')
        resp = Net::HTTP.post_form(uri,'counter'=>"pdd" )
        @record=JSON.parse(resp.body)
        @record['id']
    end
    
    def criar_adm_pdv pdv
        
        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
        
        uri=URI(  'http://162.243.215.24/PDV/PDDADMIN_register_PDDadmin')
        resp = Net::HTTP.post_form(uri)
        @record=JSON.parse(resp.body)
        
        @record
        
    end
    
    def captura_adm_pdv pdv_id
        
        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
        
        uri=URI('http://162.243.215.24/PDV/REPRES_get_pdds')
        
        resp = Net::HTTP.post_form(uri)
        @record=JSON.parse(resp.body)
        
        @record
    end
    ###############################################################
    ######Metodos relacionados ao trabalho com representantes######
    ###############################################################
    def capturar_prox_indece_representante

        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
       
        uri = URI( 'http://162.243.215.24/PDV/COUNTERS_get_next')
        resp = Net::HTTP.post_form(uri,'counter'=>"pdd" )
        @record=JSON.parse(resp.body)
        @record['id']
    end
    
    def solicitar_lista_representantes 
        
        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
        
        uri=URI('http://162.243.215.24/PDV/REPRES_list_repres')
        
        resp = Net::HTTP.post_form(uri ,'field'=>'defaultddd','value'=>'62','token'=>'mentira')
        @record=JSON.parse(resp.body)
        @record
    end
    
    def solicitar_dados_representante representante_id
        
        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
        
        uri=URI('http://162.243.215.24/PDV/REPRES_get_repres')
        
        resp = Net::HTTP.post_form(uri )
        @record=JSON.parse(resp.body)
    end
    
    def criar_representante representante 
        
        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
        
        uri=URI('http://162.243.215.24/PDV/REPRES_register_repres')
        
        resp = Net::HTTP.post_form(uri,
        'representative'=>representante.representante_id,
        'usrname'=>representante.representante_name,
        'usrcpf'=>representante.representante_cpf_cnpj,
        'nomefantasia'=>representante.representante_fantname,
        'usrddd'=>representante.representante_ddd,
        'usrphone'=>representante.representante_phone,
        'usrmail'=>representante.representante_email,
        'usraddr'=>representante.representante_addr,
        'usrarea'=>representante.representante_area,
        'usrbairro'=>representante.representante_bairro,
        'usrlogr'=>representante.representante_logradouro,
        'usradcit'=>representante.representante_ad_city,
        'usraduf'=>representante.representante_ad_uf,
        'usradcep'=>representante.representante_ad_cep)
        @record=JSON.parse(resp.body)
        @record
    end
    
    def excluir_representante representante 
        
        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
        
        uri=URI('http://162.243.215.24/PDV/PDV_remover_cadastro')
        
        resp = Net::HTTP.post_form(uri)
        @record=JSON.parse(resp.body)
        
    end
    
   
    
    
end