class WeeksController < ApplicationController

  def index
    @weeks = Week.all
    render('weeks/index.html.erb')
  end
end
