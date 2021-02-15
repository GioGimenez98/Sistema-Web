class EstadisticasController < ApplicationController
    def index 
    @temporal = [1, 2, 3, 4, 5, 6, 7 ]
    query="select user_id  from tareas  where estado=true group by user_id"

    @user = ActiveRecord::Base.connection.execute(query).values
    
    query1="select user_id  from tareas  where estado=false group by user_id"
    
    @user1 = ActiveRecord::Base.connection.execute(query1).values

    
    
    end
end
