class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours = @seconds/3600
    remainder = @seconds%3600
    minutes = remainder/60
    remainder = remainder%60

    sprintf("%02d:%02d:%02d", hours, minutes, remainder)
    
  end
  
end
