class TestsController < ApplicationController

  # GET /users
  # GET /users.xml
  def index
    @timeline = Timeline.first
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @top_level_timelines }
    end
  end
  
  def index2
    @timeline = Timeline.find(20)
    
    respond_to do |format|
      format.html { render 'tests2/index' }
      format.xml  { render :xml => @top_level_timelines }
    end
  end
  
  def index3
    @timeline = Timeline.find(20)
    
    respond_to do |format|
      format.html { render 'tests3/index' }
      format.xml  { render :xml => @top_level_timelines }
    end
  end
  
  def index4
    @timeline = Timeline.find(20)
    
    respond_to do |format|
      format.html { render 'tests4/index' }
      format.xml  { render :xml => @top_level_timelines }
    end
  end
end