class HiresController < ApplicationController
  def index
    # Copy of current for the moment
    @Hires = Hire.all

    @Past_Hires = past_hires(@Hires)
    @Past_Hires ||= []

    @Current_Hires = current_hires(@Hires)

    @Future_Hires = future_hires(@Hires)
  end

  def show

  end
  def past_hires(hire)
    hire.returned_before(Date.today)
  end

  def current_hires(hire)
    #Collection day today or less AND returning day larger than today
    # current from before today and returned after (hardcoded) 1 year
    hires = hire.collected_before(Date.today)
    hires = hires.returned_after(Date.today)
  end

  def future_hires(hire)
    hires = hire.collected_after(Date.today)
    hires = hires.returned_after(2.years)
  end
end
