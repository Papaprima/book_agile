class StoreController < ApplicationController
  def index
    @products = Product.order(title: :desc)
  end
end
