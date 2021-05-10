class GamesController < ApplicationController
  def new
    @letters = []
    10.times do
      letter = ('a'..'z').to_a.sample
      @letters << letter
    end
  end

  def score
    @word = params[:word].split('')
    @letters = params[:letters].split(' ')
    @result = ''
    if ((@word | @letters) - (@word & @letters)).length > @letters.length
      @result = 'pas possible !'
    else
      @result = 'greaaaat!'
    end
  end
end
