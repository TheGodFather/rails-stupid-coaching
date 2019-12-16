class QuestionsController < ApplicationController
  def ask
    params[:question]
  end

  def answer
    message = ask.downcase
    if message == 'i am going to work'
      @answer = 'Great!'
    elsif message.include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
    @answer
  end
end
