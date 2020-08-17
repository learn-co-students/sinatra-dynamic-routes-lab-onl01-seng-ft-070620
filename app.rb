require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    (params[:number].to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do
    answer = ""
    params[:number].to_i.times do
      answer += params[:phrase]
    end
    answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    a = params[:number1].to_i
    b = params[:number2].to_i

    if params[:operation] == 'add'
      answer = (a + b).to_s
    elsif params[:operation] == 'subtract'
      answer = (a - b).to_s
    elsif params[:operation] == 'multiply'
      answer = (a * b).to_s
    elsif params[:operation] == 'divide'
      answer = (a / b).to_s
    end
    answer
  end

end