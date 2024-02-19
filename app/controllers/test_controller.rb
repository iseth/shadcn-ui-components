class TestController < ApplicationController
  def index
    render Test::IndexView
  end
end
