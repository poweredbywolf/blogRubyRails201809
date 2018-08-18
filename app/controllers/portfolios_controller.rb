#index action is used when you want to list out a number
#of actions
class PortfoliosController < ApplicationController
  def index
    @portfolio_items = Portfolio.all
 #@portfolio_items is an instancre variable
  #    that will used in the View part
  #[we are inside controller] and Portfolio.all is model part
  # and takes data from the database
    #
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def show
  end

  def create
      @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title,:subtitle, :body))

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Portfolio is now live.' }
      #took out Json because don't need for this app, for API calls
      #  format.json { render :show, status: :created, location: @blog }
      else
        format.html { render :new }
      #  format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end


end
