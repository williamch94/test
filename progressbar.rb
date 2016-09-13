class ProgressBar
  def initialize(start, finish)
  @start = start
  @finish = finish
  @progress = start
  end


  def increment
  @progress = @progress + 1
  end

  def output
    puts "#{@progress} out of #{@finish}"
  end

  # Before the progress has happened, so increment the displayed number
  def before_output
    puts "#{@progress + 1} out of #{@finish}"
  end

  def progress
    @progress
  end

end
