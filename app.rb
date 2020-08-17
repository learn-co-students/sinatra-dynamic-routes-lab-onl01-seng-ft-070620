require_relative './config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name].split("").reverse.join
    "#{@name}"
  end

  get '/square/:number' do
    @squared_num = params[:number].to_i * params[:number].to_i
    "#{@squared_num}"
  end

  get '/say/:number/:phrase' do
    @full_string = params[:phrase] * params[:number].to_i
    "#{@full_string}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @full_string = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
    "#{@full_string}"
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    case params[:operation]
    when "add"
      "#{@number1 + @number2}"
    when "subtract"
      "#{@number1 - @number2}"
    when "multiply"
      "#{@number1 * @number2}"
    when "divide"
      "#{@number1 / @number2}"
    else
      "not a valid input"
    end
  end

end
