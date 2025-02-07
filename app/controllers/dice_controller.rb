class DiceController < ApplicationController
  def home
    render({:template=>"pages_templates/home"})
  end
  def roll
    @num_dice = params.fetch("num_dice").to_i
    @sides = params.fetch("sides").to_i
    @rolls = []
    @num_dice.times do
      throw = rand(1..@sides)
      @rolls.push(throw)
    end
    render({:template=>"pages_templates/roll"})
  end
end
