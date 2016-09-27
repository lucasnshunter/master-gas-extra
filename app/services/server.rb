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
        'pdv'=>pdv.pdv_id,#ok
        'representative'=>pdv.pdv_representative,#ok
        'nomefantasia'=>pdv.pdv_fantname,#ok
        'usrcpf'=>pdv.pdv_cpf_cnpj,#ok
        'usrname'=>pdv.pdv_name,#nome
         'usrddd'=>pdv.pdv_ddd,#ok
        'usrmail'=>pdv.pdv_email,#ok
        'usrphone'=>pdv.pdv_phone,#ok
        'usraddr'=>pdv.pdv_addr,#ok
        'usrarea'=>pdv.pdv_area, #ok
        'usrbairro'=>pdv.pdv_bairro,#ok
        'usrlogr'=>pdv.pdv_logr,#ok
        'usradcit'=>pdv.pdv_ad_city,#ok
        'usraduf'=>pdv.pdv_ad_uf,#ok
        'usradcep'=>pdv.pdv_ad_cep)#ok
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
        'usrid'=>pdv.pdv_id,#
        'nomefantasia'=>pdv.pdv_fantname,#ok
        'usrcpf'=>pdv.pdv_cpf_cnpj,#ok
        'usrname'=>pdv.pdv_name,#ok
         'usrddd'=>pdv.pdv_ddd,#ok
        'usrmail'=>pdv.pdv_email,#ok
        'usrphone'=>pdv.pdv_phone,#ok
        'usraddr'=>pdv.pdv_addr,#ok
        'usrarea'=>pdv.pdv_area, #ok
        'usrbairro'=>pdv.pdv_bairro,#ok
        'usrlogr'=>pdv.pdv_logr,#ok
        'usradcit'=>pdv.pdv_ad_city,#ok
        'usraduf'=>pdv.pdv_ad_uf,#ok
        'usradcep'=>pdv.pdv_ad_cep,#ok
         'update'=>'true')
        @record=JSON.parse(resp.body)
        @record
        
        #função ok
    end
    
    #####################################################
    ######Metodos relacionados a configuração  de PDVs####
    #####################################################
    def configurar_pdv pdv_id,limit_saldo_agua,limit_saldo_gas,percent_agua,percent_gas,sell_agua,sell_gas,sell_cell,phonepos,status
        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
        
        uri=URI( 'http://162.243.215.24/PDV/PDV_config_admin')
        
        resp = Net::HTTP.post_form(uri,
        'usrid'=>pdv_id,
        'limitsaldoagua'=>limit_saldo_agua,
        'limitsaldogas'=>limit_saldo_gas,
        'percentagua'=>percent_agua,
        'percentgas'=>percent_gas,
        'sellagua'=>sell_agua,
        'sellgas'=>sell_gas,
        'sellcell'=>sell_cell,
        'phonepos'=>phonepos,
        'status'=>status,
        'token'=>"mentira")
        @record=JSON.parse(resp.body)
        @record
        #função ok
        
    end
    
    #####################################################
    ######Metodos relacionados aos relatorios de PDVs####
    #####################################################
    def solicitar_lista_vendas_cell_pdv pdv,start_time,end_time
        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
        
        uri=URI( 'http://162.243.215.24/PDV/PDV_get_cell_sales')
        
        resp = Net::HTTP.post_form(uri,'pdvid'=>pdv,'starttime'=>start_time,'endtime'=>end_time,'token'=>"mentira")
        @record=JSON.parse(resp.body)
        @record
        #função ok
        
    end
    
    def solicitar_lista_vendas_gas_pdv pdv,start_time,end_time
        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
        
        uri=URI( 'http://162.243.215.24/PDV/PDV_get_gas_sales')
        
        resp = Net::HTTP.post_form(uri,'pdvid'=>pdv,'starttime'=>start_time,'endtime'=>end_time,'token'=>"mentira")
        @record=JSON.parse(resp.body)
        @record
        #função ok
        
    end
    
    
    def solicitar_lista_vendas_agua_pdv pdv,start_time,end_time
        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
        
        uri=URI( 'http://162.243.215.24/PDV/PDV_get_water_sales')
        
        resp = Net::HTTP.post_form(uri,'pdvid'=>pdv,'starttime'=>start_time,'endtime'=>end_time,'token'=>"mentira")
        @record=JSON.parse(resp.body)
        @record
        #função ok
        
    end
    
    
    def solicitar_lista_vendas_cell_pdv_global start_time,end_time
        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
        
        uri=URI( 'http://162.243.215.24/PDV/PDV_get_cell_sales')
        
        resp = Net::HTTP.post_form(uri,'starttime'=>start_time,'endtime'=>end_time,'token'=>"mentira")
        @record=JSON.parse(resp.body)
        @record
        #função ok
        
    end
    
    def solicitar_lista_vendas_gas_pdv_global start_time,end_time
        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
        
        uri=URI( 'http://162.243.215.24/PDV/PDV_get_gas_sales')
        
        resp = Net::HTTP.post_form(uri,'starttime'=>start_time,'endtime'=>end_time,'token'=>"mentira")
        @record=JSON.parse(resp.body)
        @record
        #função ok
        
    end
    
    
    def solicitar_lista_vendas_agua_pdv_global start_time,end_time
        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
        
        uri=URI( 'http://162.243.215.24/PDV/PDV_get_water_sales')
        
        resp = Net::HTTP.post_form(uri,'starttime'=>start_time,'endtime'=>end_time,'token'=>"mentira")
        @record=JSON.parse(resp.body)
        @record
        #função ok
        
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
        'usradcep'=>pdd.pdd_ad_cep,
        'usrlat'=>pdd.pdd_usr_lat,
        'usrlon'=>pdd.pdd_usr_lon
        )
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
    
    def solicitar_dados_pdd_adm_cpf pdd_cpf_cnpj
        
        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
        
        uri=URI('http://162.243.215.24/PDV/REPRES_list_pdds')
        
        resp = Net::HTTP.post_form(uri ,'field'=>'CPF','value'=>pdd_cpf_cnpj,'token'=>'mentira' )
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
        'usrid'=>pdd.pdd_id,
        'representative'=>pdd.pdd_representative,
        'nomefantasia'=>pdd.pdd_fantname,
        'usrcpf'=>pdd.pdd_cpf_cnpj,
        'usrname'=>pdd.pdd_name,
         'usrddd'=>pdd.pdd_ddd,
        'usrmail'=>pdd.pdd_email,
        'usrphone'=>pdd.pdd_phone,
        'usraddr'=>pdd.pdd_addr,
        'usrbairro'=>pdd.pdd_bairro,
        'usrlogr'=>pdd.pdd_logr,
        'usradcit'=>pdd.pdd_ad_city,
        'usraduf'=>pdd.pdd_ad_uf,
        'usradcep'=>pdd.pdd_ad_cep,
        'usrlat'=>pdd.pdd_usr_lat,
        'usrlon'=>pdd.pdd_usr_lon,
        
        'update'=>'true')
        @record=JSON.parse(resp.body)
        @record
        #metodo ok
        #função ok
    end
    
    #####################################################
    ######Metodos relacionados a configuração  de PDDs####
    #####################################################
    def configurar_pdd pdd_id,credito_gas,credito_agua,custo_gas,custo_agua,sell_agua,sell_gas,phonepos,status
        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
        
        uri=URI( 'http://162.243.215.24/PDV/PDD_config_admin')
        
        resp = Net::HTTP.post_form(uri,
        'usrid'=>pdd_id,
        'watercost'=>custo_agua,
        'gascost'=>custo_gas,
        'gascredit'=>credito_gas,
        'watercredit'=>credito_agua,
        'sellagua'=>sell_agua,
        'sellgas'=>sell_gas,
        'phonepos'=>phonepos,
        'status'=>status,
        'token'=>"mentira")
        @record=JSON.parse(resp.body)
        @record
        #função ok
        
    end
    
    
    #####################################################
    ######Metodos relacionados a relatorios  de PDDs####
    #####################################################
    def solicitar_lista_entregas_pdd pdd,kind,start_time,end_time
        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
        
       
        uri=URI( 'http://162.243.215.24/PDV/PDD_list_deliveries')
        
        resp = Net::HTTP.post_form(uri,'pddid'=>pdd,'kind'=>kind,'startime'=>start_time,'endtime'=>end_time,'token'=>"mentira")
        @record=JSON.parse(resp.body)
        @record
        #função ok
        
    end
    
    def solicitar_lista_entregas_pdd_global kind,start_time,end_time
        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
        
       
        uri=URI( 'http://162.243.215.24/PDV/PDD_list_deliveries')
        
        resp = Net::HTTP.post_form(uri, 'kind'=>kind,'starttime'=>start_time,'endtime'=>end_time,'token'=>"mentira")
        @record=JSON.parse(resp.body)
        @record
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
        
        resp = Net::HTTP.post_form(uri ,'field'=>'_id','value'=>representante_id,'token'=>'mentira' ,'funct'=>'exibir rep')
        @record=JSON.parse(resp.body)
        @record
        
        #função ok
    end
    
    def solicitar_dados_representante_cpf representante_cpf_cnpj
        
        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
       
         uri=URI('http://162.243.215.24/PDV/REPRES_list_repres')
        
        resp = Net::HTTP.post_form(uri ,'field'=>'CPF','value'=>representante_cpf_cnpj,'token'=>'mentira' )
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
        'usrlogr'=>representante.representante_logr,
        'usradcit'=>representante.representante_ad_city,
        'usraduf'=>representante.representante_ad_uf,
        'usradcep'=>representante.representante_ad_cep)
        @record=JSON.parse(resp.body)
        @record
        #função ok
    end
    
     
    def atualizar_representante representante 
        
        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
        
        uri=URI('http://162.243.215.24/PDV/REPRES_register_repres')
        
        resp = Net::HTTP.post_form(uri,
        'usrid'=>representante.representante_id,
        'usrname'=>representante.representante_name,
        'usrcpf'=>representante.representante_cpf_cnpj,
        'nomefantasia'=>representante.representante_fantname,
        'usrddd'=>representante.representante_ddd,
        'usrphone'=>representante.representante_phone,
        'usrmail'=>representante.representante_email,
        'usraddr'=>representante.representante_addr,
        'usrarea'=>representante.representante_area,
        'usrbairro'=>representante.representante_bairro,
        'usrlogr'=>representante.representante_logr,
        'usradcit'=>representante.representante_ad_city,
        'usraduf'=>representante.representante_ad_uf,
        'usradcep'=>representante.representante_ad_cep,
        'update'=>true)
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
    
    
    ####################################
    ######Metodos de geolocalização ####
    ####################################
    
    def solicitar_geolocalizacao gps
        require "rubygems"
        require 'json'
        require "net/http"
        require 'yaml'
        
        uri=URI('http://162.243.215.24/PHP/digitalCell/index.php/representatives/getlatlon')
        
        resp = Net::HTTP.post_form(uri,'endereco'=>gps.gps_endereco,'logradouro'=>gps.gps_logr,'bairro'=>gps.gps_bairro,'cidade'=>gps.gps_cidade,'estado'=>gps.gps_estado)
        @record=JSON.parse(resp.body)
        @record
      

    end
    
end