class Pdd
    attr_accessor :pddfantname
    attr_accessor :pdd_cpf_cnpj
    attr_accessor :pddvid
    attr_accessor :pddname
    attr_accessor :pddaddr
    attr_accessor :pddbairro
    attr_accessor :pddarea
    attr_accessor :pddadcit
    attr_accessor :pddaduf
    attr_accessor :pddadcep
    attr_accessor :pddphone
        
    def capturar_prox_indece_pdd_adm
      servidor=Server.new    
      resp=servidor.capturar_prox_indece_pdd_adm
      resp
    end
end

    