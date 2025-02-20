class GreeterController < ApplicationController
  def hello
    random_names = [ "zjj", "mx" ]
    @name = random_names.sample
    @time = Time.now
  end
  def goodbye
    random_names = [ "goodzjj", "mx" ]
    @name = random_names.sample
    @time = Time.now
  end
end
