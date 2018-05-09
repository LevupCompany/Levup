class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :update, :destroy, :editor]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    @order = Order.select(:total_sum).find(params[:id])

  end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def editor

  end


  def edit
    @order = Order.select(:order_title, :order_detail, :id).find(params[:id])
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
        puts @order.errors.inspect
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update_attributes(order_title: params[:order_title],order_detail: params[:order_detail])
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
        puts @order.errors.inspect

      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:site_type, :site_design, :design_logo, :design_banner, :design_page, :engine, :module_otzyvy,
                                    :module_blog, :module_slider, :module_gallery, :module_easycalc, :module_hardcalc, :module_formit,
                                    :module_callback, :module_chat, :module_blog, :module_mailer, :module_multilang, :module_catalog,
                                    :module_basket, :module_payment, :module_сurrency, :module_multitovar, :module_sales, :module_api,
                                    :module_reg, :module_cabinet, :module_reccomendation, :module_importer, :module_referal,
                                    :module_filtration, :c_easypage, :content_easypage, :c_hardpage, :content_hardpage, :c_editpage,
                                    :content_editpage, :c_post, :content_post, :c_translate, :content_translate, :module_googlemaps,
                                    :type_logo, :elements_logo, :prototype_logo, :variate_logo, :variant_logo, :oneside_visitka,
                                    :twoside_visitka, :blank, :convert, :cennik, :papka, :uniform, :disk, :email_send, :suvenir,
                                    :flier, :plakat, :banner, :shtender, :log_balance, :firm_balance, :diz_balance, :prog_balance,
                                    :support_balance, :order_title, :order_detail, :user_name, :user_email, :user_phone, :user_password, :user_password_confirmation, :total_sum)
    end
end
