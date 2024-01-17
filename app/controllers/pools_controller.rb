class PoolsController < ApplicationController
  def index
  end

  def new
    @pool = Pool.new
  end

  def create
    @pool = Pool.new(pool_params)
    if @pool.save
      redirect_to @pool, notice: "Pool has been created"
    else
      flash[:warning] = "omg gay"
    end
  end

  def show
    @pool = Pool.find(params[:id])
  end

  private
  def pool_params
    params.require(:pool).permit(:name)
  end
end
