class StudyMemosController < ApplicationController
  # GET /study_memos
  # GET /study_memos.json
  def index
    @study_memos = StudyMemo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @study_memos }
    end
  end

  # GET /study_memos/1
  # GET /study_memos/1.json
  def show
    @study_memo = StudyMemo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @study_memo }
    end
  end

  # GET /study_memos/new
  # GET /study_memos/new.json
  def new
    @study_memo = StudyMemo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @study_memo }
    end
  end

  # GET /study_memos/1/edit
  def edit
    @study_memo = StudyMemo.find(params[:id])
  end

  # POST /study_memos
  # POST /study_memos.json
  def create
    @study_memo = StudyMemo.new(params[:study_memo])

    respond_to do |format|
      if @study_memo.save
        format.html { redirect_to @study_memo, notice: 'Study memo was successfully created.' }
        format.json { render json: @study_memo, status: :created, location: @study_memo }
      else
        format.html { render action: "new" }
        format.json { render json: @study_memo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /study_memos/1
  # PUT /study_memos/1.json
  def update
    @study_memo = StudyMemo.find(params[:id])

    respond_to do |format|
      if @study_memo.update_attributes(params[:study_memo])
        format.html { redirect_to @study_memo, notice: 'Study memo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @study_memo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /study_memos/1
  # DELETE /study_memos/1.json
  def destroy
    @study_memo = StudyMemo.find(params[:id])
    @study_memo.destroy

    respond_to do |format|
      format.html { redirect_to study_memos_url }
      format.json { head :no_content }
    end
  end
end
