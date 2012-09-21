class BooksCategoriesController < ApplicationController
  # GET /books_categories
  # GET /books_categories.json
  def index
    @books_categories = BooksCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @books_categories }
    end
  end

  # GET /books_categories/1
  # GET /books_categories/1.json
  def show
    @books_category = BooksCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @books_category }
    end
  end

  # GET /books_categories/new
  # GET /books_categories/new.json
  def new
    @books_category = BooksCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @books_category }
    end
  end

  # GET /books_categories/1/edit
  def edit
    @books_category = BooksCategory.find(params[:id])
  end

  # POST /books_categories
  # POST /books_categories.json
  def create
    @books_category = BooksCategory.new(params[:books_category])

    respond_to do |format|
      if @books_category.save
        format.html { redirect_to @books_category, notice: 'Books category was successfully created.' }
        format.json { render json: @books_category, status: :created, location: @books_category }
      else
        format.html { render action: "new" }
        format.json { render json: @books_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /books_categories/1
  # PUT /books_categories/1.json
  def update
    @books_category = BooksCategory.find(params[:id])

    respond_to do |format|
      if @books_category.update_attributes(params[:books_category])
        format.html { redirect_to @books_category, notice: 'Books category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @books_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books_categories/1
  # DELETE /books_categories/1.json
  def destroy
    @books_category = BooksCategory.find(params[:id])
    @books_category.destroy

    respond_to do |format|
      format.html { redirect_to books_categories_url }
      format.json { head :no_content }
    end
  end
end
