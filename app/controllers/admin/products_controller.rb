class Admin::ProductsController < Admin::AdminController
  def show
    @product = Product.find(params[:id])
  end

end
