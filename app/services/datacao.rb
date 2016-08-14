class Datacao
    attr_accessor :data_inicio
    attr_accessor :data_fim
    
    def ultimo_ano
        data=Time.now.to_time.to_i
        data.year
    end
    
    def ultimos_3_meses
        
    end
    def ultimos_30_dias
        
    end
    def mes_anterior
        
    end
    def mes_atual
        
    end
    
end