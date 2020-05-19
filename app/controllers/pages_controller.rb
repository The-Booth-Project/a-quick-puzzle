class PagesController < ApplicationController
  def puzzle
    @old_guesses = session.fetch(:user_guesses)
    render({ :template => "pages/puzzle.html.erb" })
  end
  
  def write_cookie
    #cookies.store(:fruit,"apple")
    #cookies.store(:color,"maroon")

    #session.store(:first, params.fetch("first_num"))
    #session.store(:second, params.fetch("second_num"))
    #session.store(:third, params.fetch("third_num"))

    #guess =[]
    #guess.push(params)
    #session.store(:user_guesses,guess)

    if session.fetch(:user_guesses) == nil
      old_guesses =[]
    else
      old_guesses = session.fetch(:user_guesses)
    end

    old_guesses.push(params)
    session.store(:user_guesses,old_guesses)

    redirect_to("/")
  end
end
