class EstadisticasController < ApplicationController
    def index 
    @temporal = [1, 2, 3, 4, 5, 6, 7 ]
    @user = Tarea.group(:user_id)
        
    
    end
end
