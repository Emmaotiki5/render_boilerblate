class PayJobController < ApplicationController
  def contact
  end

  def index
    @experts=Expert.all
  end
end
