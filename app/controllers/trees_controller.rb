class TreesController < ApplicationController
  # GET /trees
  # GET /trees.json

  def index
    if params[:filter] == 'nickname'
      @trees = Tree.all(:order => "nickname ASC")
    elsif params[:filter] == 'created_at'
      @trees = Tree.all(:order => "created_at DESC")
    else
      @trees = Tree.all
    end

    @json = Tree.all.to_gmaps4rails

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @trees }
    end
  end

  # GET /trees/1
  # GET /trees/1.json
  def show
    @tree = Tree.find(params[:id])
    @json = @tree.to_gmaps4rails

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tree }
    end
  end

  # GET /trees/new
  # GET /trees/new.json
  def new
    @tree = Tree.new
    @name = "tree-#{Tree.count+1}"

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tree }
    end
  end

  # GET /trees/1/edit
  def edit
    @tree = Tree.find(params[:id])
  end

  # POST /trees
  # POST /trees.json
  def create
    @tree = Tree.new(params[:tree])

    respond_to do |format|
      if @tree.save
        format.html { redirect_to @tree, notice: 'Tree was successfully created.' }
        format.json { render json: @tree, status: :created, location: @tree }
      else
        format.html { render action: "new" }
        format.json { render json: @tree.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /trees/1
  # PUT /trees/1.json
  def update
    @tree = Tree.find(params[:id])

    respond_to do |format|
      if @tree.update_attributes(params[:tree])
        format.html { redirect_to @tree, notice: 'Tree was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tree.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trees/1
  # DELETE /trees/1.json
  def destroy
    @tree = Tree.find(params[:id])
    @tree.destroy

    respond_to do |format|
      format.html { redirect_to trees_url }
      format.json { head :no_content }
    end
  end
end
