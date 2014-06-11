class VideotutsController < ApplicationController
  # GET /videos
  # GET /videos.json
  def index
    @lecture = Tutorial.find(params[:lecture_id])
    @videotuts = @lecture.videos

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @videos }
    end
  end

  # GET /videos/1
  # GET /videos/1.json
  def show
    lecture = Tutorial.find(params[:lecture_id])
	@videotuts = lecture.videos
    @videotut = lecture.videos.find(params[:id])
	
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @video }
    end
  end

 
end
