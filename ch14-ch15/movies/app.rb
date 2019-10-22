require 'sinatra'
require 'movie'

get('/movies') do
  @movies = []
  titles = ['Jaws', 'Alien', 'Terminator 2']

  titles.each do |title|
    movie = Movie.new
    movie.title = title

    @movies << movie
  end

  erb :index
end

get('/movies/new') do
  erb :new
end

post('/movies/create') do
  @movie = Movie.new
  @movie.title = params['title']
  @movie.director = params['director']
  @movie.year = params['director']
end

get('/addition') do
  @first = 3
  @second = 5
  @result = @first + @second

  erb :addition
end

get('/multiplication') do
  @first = 2
  @second = 6
  @result = @first * @second

  erb :multiplication
end

get('/form') do
  erb :form
end

post('/convert') do
  fahrenheit = params['temperature'].to_f
  celsius = (fahrenheit - 32) / 1.8
  '%0.1f degrees Fahrenheit is %0.1f degrees Celsius.' % [fahrenheit, celsius]
end
