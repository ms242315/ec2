class OrdersController < ApplicationController
  def new
    @book = Book.find(params[:id])
    if params[:order].nil?
      @order = Order.new(product_id: @book.id)
    else
      @order = Order.new(order_params)
    end
  end

  def confirm
    redirect_to create
    @book = Book.find(params[:book])
    @order = Order.new(order_params)
  end

  def edit
  end

  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to orders_url, notice: "Order was successfully created." }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end

    render action: "product"
  end

  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to orders_url, notice: "Order was successfully updated." }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Only allow a list of trusted parameters through.
    def order_params
       params.require(:order).permit(:product_id, :count, :address)
    end
end
