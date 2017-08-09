enable :sessions


get '/' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  @data= Question.all
  erb :index
end
