require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do 
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do 
    @squared = params[:number].to_i * params[:number].to_i
    "#{@squared}"
  end 

  get '/say/:number/:phrase' do 
    @string = params[:phrase] * params[:number].to_i
    "#{@string}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end 

  get '/:operation/:number1/:number2' do 
    operator = ""
    if params[:operation] == "add"
      operator = "+"
    elsif params[:operation] == "subtract"
        operator = "-"
    elsif params[:operation] == "multiply"
        operator = "*"
    elsif params[:operation] == "divide"
        operator = "/"
    end 

    @number1 = params[:number1].to_i 
    @number2 = params[:number2].to_i

    @math = @number1.send(operator, @number2)
    "#{@math}"
  end 

end