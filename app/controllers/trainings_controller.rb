class TrainingsController < ApplicationController
  def index
    @trainings = Training.all
  end

  def show
    @training = Training.find(params[:id])
  end

  def new
    @training = Training.new
  end

  def create
    @training = Training.new(training_params)
    # @training.save # Will raise ActiveModel::ForbiddenAttributesError
    if @training.save
      redirect_to training_path(@training)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @training = Training.find(params[:id])
  end

  def update
    @training = Training.find(params[:id])
    @training.update(training_params)
    redirect_to training_path(@training)
  end

  def destroy
    @training = Training.find(params[:id])
    @training.destroy
    redirect_to training_path, status: :see_other
  end

  private

  def training_params
    params.require(:training).permit(:title, :date, :start_at, :end_at, :description, :coach, :address, :title_address,
                                     :price, :participation)
  end
end
