class Calendario
    attr_accessor :start_date
    attr_accessor :end_date
    
    def data_livre start_date,end_date
        require "time"
        
        data_inicio=start_date.split('-')
        ano_inicio=data_inicio[0].to_i
        mes_inicio=data_inicio[1].to_i
        dia_inicio=data_inicio[2].to_i
        date_start=Date.new( ano_inicio,mes_inicio,dia_inicio).to_time.to_i
        data_fim=end_date.split('-')
        ano_fim=data_fim[0].to_i
        mes_fim=data_fim[1].to_i
        dia_fim=data_fim[2].to_i
        date_end=Date.new( ano_fim,mes_fim,dia_fim).to_time.to_i
        data_livre=[date_start,date_end]
        data_livre
    end
  
    def mes_anterior
        require "time"
        hoje=Time.now
        mes_anterior=Time.new(hoje.year,hoje.month-1,1).to_time.to_i
        mes_atual=Time.new(hoje.year,hoje.month,1).to_time.to_i
        intervalo_mes=[mes_anterior,mes_atual]
        intervalo_mes
        
    end
    def mes_atual
        require "time"
        require "time"
        hoje=Time.now
        mes_atual=Time.new(hoje.year,hoje.month,1).to_time.to_i
        intervalo_mes=[hoje,mes_atual]
        intervalo_mes
        
    end
    def ultimos_30_dias
        require "time"
        hoje=Time.now
        ultimos_30_dias=Time.new(hoje.year,hoje.month-1,hoje.day).to_time.to_i
        mes_atual=Time.new(hoje.year,hoje.month,hoje.day).to_time.to_i
        intervalo_meses=[ultimos_30_dias,mes_atual]
        intervalo_meses
    end
    def ultimos_3_meses
        require "time"
        hoje=Time.now
        ultimos_3_meses=Time.new(hoje.year,hoje.month-3,hoje.day).to_time.to_i
        mes_atual=Time.new(hoje.year,hoje.month,hoje.day).to_time.to_i
        intervalo_meses=[ultimos_3_meses,mes_atual]
        intervalo_meses
    end
    def ultimo_ano
        require "time"
        hoje=Time.now
        ultimo_ano=Time.new(hoje.year-1,hoje.month,hoje.day).to_time.to_i
        data_atual=Time.new(hoje.year,hoje.month,hoje.day).to_time.to_i
        intervalo_ano=[ultimo_ano,data_atual]
        intervalo_ano
        
        
    end
    
    def timestamp_to_data timestamp
        require 'date'
        timestamp=timestamp/1000
        date=Time.at(timestamp)
        date.year
        data= date.day.to_s+"/"+date.month.to_s+"/"+date.year.to_s
        data


    end
end