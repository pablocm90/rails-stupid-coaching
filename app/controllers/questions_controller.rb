class QuestionsController < ApplicationController
  def answer
    @question = params[:query]
    if @question.downcase == "i am going to work right now!"
      @answer = ""
    elsif @question[-1] == "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end

      if @question == @question.upcase && @question.downcase != "i am going to work right now!"
        @answer = "I can feel your motivation! #{@answer}"
      else
        @answer
      end
  end

  def ask
    @question = params[:query]
  end
end
