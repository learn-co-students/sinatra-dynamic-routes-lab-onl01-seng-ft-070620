require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    (params[:number].to_i * params[:number].to_i).to_s
  end

  get '/say/:number/:phrase' do
    @phrase = ""
    params[:number].to_i.times do
      @phrase += params[:phrase] + " "
    end
    @phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
  end

  get '/:operation/:number1/:number2' do
    @num = 0
    if params[:operation] == "add"
      @num = (params[:number1].to_i + params[:number2].to_i).to_s
    elsif params[:operation] == "subtract"
      @num = (params[:number1].to_i - params[:number2].to_i).to_s
    elsif params[:operation] == "multiply"
      @num = (params[:number1].to_i * params[:number2].to_i).to_s
    elsif params[:operation] == "divide"
      @num = (params[:number1].to_i / params[:number2].to_i).to_s
    end
    @num
  end

end
