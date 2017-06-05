class CoachingController < ApplicationController
  def answer
    @input = params[:input]
    if @input.upcase == @input
      coach_answer_enhanced(@input)
    else
      coach_answer(@input)
    end
  end

  def ask
  end

  def coach_answer(input)
    if @input == "I am going to work right now!"
      @coach_answer = ""
    elsif input.include?("?")
      @coach_answer = "Silly question, get dressed and go to work!"
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end


  def coach_answer_enhanced(input)
  # TODO: return coach answer to your_message, with additional custom rules of yours
  if @input == ("I am going to work right now!").upcase
    @coach_answer = ""
  elsif @input.upcase && @input.include?("?")
    @coach_answer = "I can feel your motivation!" + " " + "Silly question, get dressed and go to work!"
  else @input.upcase
    @coach_answer = "I can feel your motivation!" + " " + "I don't care, get dressed and go to work!"

  end
end


end
