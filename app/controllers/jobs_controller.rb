class JobsController < ApplicationController
  # skip_before_action :authenticate_user!
  def index
    @user = current_user
    @jobs = Job.where[user_id: @user]
  end

  def show
    # @job = job.find(params[:id])
    # @attendees = Attendee.where(job_id: @job.id)
    # @markers =
    #   {
    #     lat: @job.latitude,
    #     lng: @job.longitude
    #   }
  end

  def new
    @user = current_user
    @job = Job.new
  end

  def create
    # @user = User.find(params[:city_id])
    @user = current_user
    @job = Job.new(job_params)
    @job.user = @user
    if @job.save
      redirect_to job_path(@job)
    else
      render "new"
    end
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    if @job.update(job_params)
      redirect_to @job, notice: 'job successfully updated'
    else
      render :edit
    end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to job_path(@jobs)
  end

  private

  def job_params
    params.require(:job).permit(:title, :company, :desire, :date_applied, :person_of_contact, :link_to_job)
  end
end
