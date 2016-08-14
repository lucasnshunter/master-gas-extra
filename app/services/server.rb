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
    #criar pdv <OK>
    #listar Pdvs <OK>
    #Exibir pdvs <não funcionando>
    #Deletar pdvs <não funcionando>
    #atualizar pdvs <não funcionando>
    #relatorios <não funcionando>
    def capturar_prox_indece_pdv_adm

        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
        uri = URI('http://162.243.215.24/PDV/COUNTERS_get_next')
        resp = Net::HTTP.post_form(uri,'counter'=>"pdv" )
        @record=JSON.parse(resp.body)
        @record['id']
        #função ok
    end
    
    def criar_adm_pdv  pdv
        
        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
        
        uri=URI( 'http://162.243.215.24/PDV/PDVADMIN_register_admin')
        
        resp = Net::HTTP.post_form(uri,
        'pdv'=>pdv.pdv_id,
        'representative'=>pdv.pdv_representative,
        'nomefantasia'=>pdv.pdv_fantname,
        'usrcpf'=>pdv.pdv_cpf_cnpj,
        'usrname'=>pdv.pdv_name,
        'usrseguimento'=>pdv.pdv_seguimento,
        'usrsaldo'=>pdv.pdv_saldo,
        'usrcomicao'=>pdv.pdv_comicao,
         'usrddd'=>pdv.pdv_ddd,
        'usrmail'=>pdv.pdv_email,
        'usrphone'=>pdv.pdv_phone,
        'usraddr'=>pdv.pdv_addr,
        'usrarea'=>pdv.pdv_area, 
        'usrbairro'=>pdv.pdv_bairro,
        'usrlogr'=>pdv.pdv_logr,
        'usradcit'=>pdv.pdv_ad_city,
        'usraduf'=>pdv.pdv_ad_uf,
        'usradcep'=>pdv.pdv_ad_cep)
        @record=JSON.parse(resp.body)
        @record
        #função ok
    end
   
    def solicitar_lista_pdvs ddd
        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
        
        uri=URI('http://162.243.215.24/PDV/REPRES_list_pdvs')
        
        resp = Net::HTTP.post_form(uri ,'field'=>'defaultddd','value'=>ddd,'token'=>'mentira')
        @record=JSON.parse(resp.body)
        @record
        # função ok  
    end
    
    def solicitar_dados_pdv_adm pdv_id
        
        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
        
        uri=URI('http://162.243.215.24/PDV/REPRES_list_pdvs')
        
        resp = Net::HTTP.post_form(uri ,'field'=>'_id','value'=>pdv_id,'token'=>'mentira' )
        @record=JSON.parse(resp.body)
        @record
        
    
        #função não funciona
    end
    
    def solicitar_dados_pdv_adm_cpf pdv_cpf_cnpj
        
        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
        
        uri=URI('http://162.243.215.24/PDV/REPRES_list_pdvs')
        
        resp = Net::HTTP.post_form(uri ,'field'=>'CPF','value'=>pdv_cpf_cnpj,'token'=>'mentira' )
        @record=JSON.parse(resp.body)
        @record
        
    
        #função não funciona
    end
    
    def excluir_pdv_adm pdv_id
        
        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
        
        uri=URI('http://162.243.215.24/PDV/PDV_remover_cadastro')
        
        resp = Net::HTTP.post_form(uri,'usrid'=>pdv_id)
        @record=JSON.parse(resp.body)
        @record
        #metodo ok
    end
    
    def atualizar_adm_pdv  pdv
        
        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
        
        uri=URI( 'http://162.243.215.24/PDV/PDVADMIN_register_admin')
        
        resp = Net::HTTP.post_form(uri,
        'update'=>'true',
        'usrid'=>pdv.pdv_id,
        'representative'=>pdv.pdv_representative,
        'nomefantasia'=>pdv.pdv_fantname,
        'usrcpf'=>pdv.pdv_cpf_cnpj,
        'usrname'=>pdv.pdv_name,
        'usrseguimento'=>pdv.pdv_seguimento,
        'usrsaldo'=>pdv.pdv_saldo,
        'usrcomicao'=>pdv.pdv_comicao,
         'usrddd'=>pdv.pdv_ddd,
        'usrmail'=>pdv.pdv_email,
        'usrphone'=>pdv.pdv_phone,
        'usraddr'=>pdv.pdv_addr,
        'usrarea'=>pdv.pdv_area, 
        'usrbairro'=>pdv.pdv_bairro,
        'usrlogr'=>pdv.pdv_logr,
        'usradcit'=>pdv.pdv_ad_city,
        'usraduf'=>pdv.pdv_ad_uf,
        'usradcep'=>pdv.pdv_ad_cep)
        @record=JSON.parse(resp.body)
        @record
        
        #função ok
    end
    #####################################################
    ######Metodos relacionados aos relatorios de PDVs####
    #####################################################
    def solicitar_lista_vendas_gas
        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
        
        uri=URI( 'http://162.243.215.24/PDV/PDV_get_gas_sales')
        
        resp = Net::HTTP.post_form(uri,'token'=>"mentira")
        @record=JSON.parse(resp.body)
        @record
        #função ok
        #,'pdv_id'=>"",'userphone'=>"",'starttime'=>"",'endtime'=>""
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
        #metodo ok
    end
    
    def criar_adm_pdd  pdd
        
        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
        
        uri=URI( 'http://162.243.215.24/PDV/PDDADMIN_register_PDDadmin')
        
        resp = Net::HTTP.post_form(uri,
        'pdd'=>pdd.pdd_id,
        'representative'=>pdd.pdd_representative,
        'nomefantasia'=>pdd.pdd_fantname,
        'usrcpf'=>pdd.pdd_cpf_cnpj,
        'usrname'=>pdd.pdd_name,
        'usrsaldo'=>pdd.pdd_saldo,
        'usrcusto'=>pdd.pdd_custo,
         'usrddd'=>pdd.pdd_ddd,
        'usrmail'=>pdd.pdd_email,
        'usrphone'=>pdd.pdd_phone,
        'usraddr'=>pdd.pdd_addr,
        'usrarea'=>pdd.pdd_area, 
        'usrbairro'=>pdd.pdd_bairro,
        'usrlogr'=>pdd.pdd_logr,
        'usradcit'=>pdd.pdd_ad_city,
        'usraduf'=>pdd.pdd_ad_uf,
        'usradcep'=>pdd.pdd_ad_cep)
        @record=JSON.parse(resp.body)
        @record
        #metodo ok
        #função ok
    end
   
    def solicitar_lista_pdds ddd
        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
        
        uri=URI('http://162.243.215.24/PDV/REPRES_list_pdds')
        
        resp = Net::HTTP.post_form(uri ,'field'=>'defaultddd','value'=>ddd,'token'=>'mentira')
        @record=JSON.parse(resp.body)
        @record
        # função ok  
    end
    
    def solicitar_dados_pdd_adm pdd_id
        
        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
        
        uri=URI('http://162.243.215.24/PDV/REPRES_list_pdds')
        
        resp = Net::HTTP.post_form(uri ,'field'=>'_id','value'=>pdd_id,'token'=>'mentira' )
        @record=JSON.parse(resp.body)
        @record
        
    
        #função funciona
    end
    def excluir_pdd_adm pdd_id
        #pdv_id
        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
        
        uri=URI('http://162.243.215.24/PDV/PDV_remover_cadastro')
        
        resp = Net::HTTP.post_form(uri,'usrid'=>pdd_id)
        @record=JSON.parse(resp.body)
        @record
        #metodo ok
    end
    
    def atualizar_adm_pdd  pdd
        
        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
        
        uri=URI( 'http://162.243.215.24/PDV/PDDADMIN_register_PDDadmin')
        
        resp = Net::HTTP.post_form(uri,
        'userid'=>pdd.pdd_id,
        'representative'=>pdd.pdd_representative,
        'nomefantasia'=>pdd.pdd_fantname,
        'usrcpf'=>pdd.pdd_cpf_cnpj,
        'usrname'=>pdd.pdd_name,
        'usrsaldo'=>pdd.pdd_saldo,
        'usrcusto'=>pdd.pdd_custo,
         'usrddd'=>pdd.pdd_ddd,
        'usrmail'=>pdd.pdd_email,
        'usrphone'=>pdd.pdd_phone,
        'usraddr'=>pdd.pdd_addr,
        'usrarea'=>pdd.pdd_area, 
        'usrbairro'=>pdd.pdd_bairro,
        'usrlogr'=>pdd.pdd_logr,
        'usradcit'=>pdd.pdd_ad_city,
        'usraduf'=>pdd.pdd_ad_uf,
        'usradcep'=>pdd.pdd_ad_cep)
        @record=JSON.parse(resp.body)
        @record
        #metodo ok
        #função ok
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
        #função ok
    end
    
    def solicitar_lista_representantes ddd
        
        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
        
        uri=URI('http://162.243.215.24/PDV/REPRES_list_repres')
        
        resp = Net::HTTP.post_form(uri ,'field'=>'defaultddd','value'=>ddd,'token'=>'mentira')
        @record=JSON.parse(resp.body)
        @record
        # função ok
    end
    
    def solicitar_dados_representante representante_id
        
        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
       
         uri=URI('http://162.243.215.24/PDV/REPRES_list_repres')
        
        resp = Net::HTTP.post_form(uri ,'field'=>'_id','value'=>representante_id,'token'=>'mentira' )
        @record=JSON.parse(resp.body)
        @record
        #função ok
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
        #função ok
    end
    
    def excluir_representante representante_id
        
        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
        
        uri=URI('http://162.243.215.24/PDV/PDV_remover_cadastro')
        
        resp = Net::HTTP.post_form(uri,'usrid'=>representante_id)
        @record=JSON.parse(resp.body)
        @record
        #metodo ok, porém falata codar view
    end
    
   
    
    
end