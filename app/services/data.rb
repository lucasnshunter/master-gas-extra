class Data
    attr_accessor :data_inicio
    attr_accessor :data_fim
    
    def ultimo_ano
        data=Time.now
        data.year
    end
    
end