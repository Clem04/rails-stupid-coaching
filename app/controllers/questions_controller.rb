class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = params[:answer]
    correct = 'I am going to work'
    if @question == correct
      @answer = 'Great!'
    elsif @question == 'I am going to work?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I dont care, get dressed and go to work!'
    end
  end
end
