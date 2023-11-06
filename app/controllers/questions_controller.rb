class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = ''
    if params[:question] == 'I am going to work' ||
       params[:question] == 'i am going to work'
      @answer = 'Great'
    elsif params[:question].ends_with?('?')
      @answer = 'Silly Question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
