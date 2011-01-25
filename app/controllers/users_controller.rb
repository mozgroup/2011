class UsersController < ApplicationController

  def test_excel
    require 'win32ole'
    require 'sqlite3'
    
    #   Connect to a running instance of Excel
    excel = WIN32OLE.new('Excel.Application')
    excel.visible = true
    excel.workbooks.open("c:\\download\\A.xls") # absolute file path

    #   Get the active workbook
    wb = excel.ActiveWorkbook
    #   Create the SQLite3 database
    db = SQLite3::Database.new('excel.db')
    #   Create a database table for each worksheet 
    #   in the workbook
    wb.Worksheets.each do |ws|
        worksheetName = 'sheet1'
        #   Grab all values from worksheet into a 
        #   2-dimensional array
        data = ws.UsedRange.Value
        
        unless data.nil?
        #   Grab first row of data to use as field names
        field_names = data.shift
        field_names = field_names.collect{|field_name| "'#{field_name}'"}
        #   Create database table using worksheet name and 
        #   field names
        db.execute("delete from sheet1")
        #db.execute("CREATE TABLE [#{worksheetName}] \
        #    ( #{field_names.join(',')} );")
        #   For each row of data...
        data.each do |row|
            #   ...single-quote all field values...
            row.collect! { |f| f = "'" + f.to_s + "'" }
            #   ...and insert a new record into the 
            #   database table
            db.execute("INSERT INTO [#{worksheetName}] VALUES \
                ( #{row.join(',')} );")
        end
        end
    end
  end

  # GET /users
  # GET /users.xml
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end

  # GET /users/1
  # GET /users/1.xml
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/new
  # GET /users/new.xml
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.xml
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to(@user, :notice => 'User was successfully created.') }
        format.xml  { render :xml => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to(@user, :notice => 'User was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  end
end
