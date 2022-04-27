class DiceController < ApplicationController

  def infinity_and_beyond   
    @num_dice = params.fetch("number_of_dice").to_i
    @num_faces = params.fetch("how_many_sides").to_i

    @array_of_rolls = Array.new

    @num_dice.times do
      val = rand(1..@num_faces)
      @array_of_rolls.push(val)
    end

    render({:template => "dice_templates/infinity.html.erb"})
  end

end
