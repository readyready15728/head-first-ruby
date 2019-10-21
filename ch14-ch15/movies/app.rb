require 'sinatra'
require 'movie'

get('/movies') do
  @movie = Movie.new
  @movie.title = 'Jaws'

  erb :index
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
