class NumbersController < ApplicationController
  def index
    @numbers = Number.all
  end
end
