class SearchoffersController < ApplicationController
  # GET /searchoffers
  # GET /searchoffers.xml
  def index
    @searchoffers = Searchoffer.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @searchoffers }
    end
  end

  # GET /searchoffers/1
  # GET /searchoffers/1.xml
  def show
    @searchoffer = Searchoffer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @searchoffer }
    end
  end

  # GET /searchoffers/new
  # GET /searchoffers/new.xml
  def new
    @searchoffer = Searchoffer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @searchoffer }
    end
  end

  # GET /searchoffers/1/edit
  def edit
    @searchoffer = Searchoffer.find(params[:id])
  end

  # POST /searchoffers
  # POST /searchoffers.xml
  def create
    @searchoffer = Searchoffer.new(params[:searchoffer])

    respond_to do |format|
      if @searchoffer.save
        flash[:notice] = 'Searchoffer was successfully created.'
        format.html { redirect_to(@searchoffer) }
        format.xml  { render :xml => @searchoffer, :status => :created, :location => @searchoffer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @searchoffer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /searchoffers/1
  # PUT /searchoffers/1.xml
  def update
    @searchoffer = Searchoffer.find(params[:id])

    respond_to do |format|
      if @searchoffer.update_attributes(params[:searchoffer])
        flash[:notice] = 'Searchoffer was successfully updated.'
        format.html { redirect_to(@searchoffer) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @searchoffer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /searchoffers/1
  # DELETE /searchoffers/1.xml
  def destroy
    @searchoffer = Searchoffer.find(params[:id])
    @searchoffer.destroy

    respond_to do |format|
      format.html { redirect_to(searchoffers_url) }
      format.xml  { head :ok }
    end
  end
end
