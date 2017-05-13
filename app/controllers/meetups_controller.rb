class MeetupsController < ApplicationController
  def index
    @meetups = Meetup.all
  end

  def new
    @meetup = Meetup.new
  end

  def create
    @meetup = Meetup.new(meetup_params)
    @meetup.save
    redirect_to meetups_path
  end

  def show
    @meetup = Meetup.find(params[:id])
  end

  def edit
    @meetup = Meetup.find(params[:id])
  end  
  private

  def meetup_params
    params.require(:meetup).permit(:title, :description)
  end
end
