class PagesController < ApplicationController

  def ask
  end

  def answer
    # raise
    @question = params[:question]
    # If the message is I am going to work, the coach will answer Great!
    # regex to make case sensitive
    if @question == /I am going to work/i
      @answer = "Great!"
      # If the message has a question mark ? at the end,
    elsif @question.ends_with?("?")
      # the coach will answer Silly question, get dressed and go to work!.
      @answer = "Silly question, get dressed and go to work!"
      # Otherwise the coach will answer I don't care, get dressed and go to work!
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
