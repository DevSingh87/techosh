class LecturesController < ApplicationController
  # GET /tutorials
  # GET /tutorials.json
  def index
    @tutorials = Tutorial.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tutorials }
    end
  end

  # GET /tutorials/1
  # GET /tutorials/1.json
  def show
    @tutorial = Tutorial.find(params[:id])
	@videos = @tutorial.videos.all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tutorial }
    end
  end
  
   def edit
    @tutorial = Tutorial.find(params[:id])
  end
  
   def contents
    @tutorial = Tutorial.find(1)
	@videos = @tutorial.videos.all

    respond_to do |format|
      format.html # preview.html.erb
      format.json { render json: @tutorial }
    end
  end

end
