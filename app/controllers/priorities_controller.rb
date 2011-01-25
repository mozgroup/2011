class PrioritiesController < ApplicationController

  # GET /users
  # GET /users.xml
  def index
    @owner = params[:owner]
    @view_by = params[:view_by]
    @a = Date.parse "2011-01-01"
    @b = Date.parse "2011-03-01"
    @top_level_timelines = Timeline.find_all_by_predecessor_id(nil)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @top_level_timelines }
    end
  end
end