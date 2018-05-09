class ServiceController < ApplicationController
  def index
  end
  def site
    @order= Order.new
  end
  def dizajn
    @order= Order.new
  end
  def business
    @order= Order.new
  end
  def mobile
    @order= Order.new
  end

end
