require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    name = params[:name]
    "#{name.reverse}"
  end

  get '/square/:number' do
    num = params[:number].to_i
    "#{num * num}"
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    phrase = params[:phrase]
    string = ""
    num.times do
      string += phrase
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word]}."
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
      when 'add'
        "#{params[:number1].to_i + params[:number2].to_i}"
      when 'subtract'
        "#{params[:number1].to_i - params[:number2].to_i}"
      when 'multiply'
        "#{params[:number1].to_i * params[:number2].to_i}"
      when 'divide'
        "#{params[:number1].to_i / params[:number2].to_i}"
    end
  end
end