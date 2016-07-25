class ResearchPapersController < ApplicationController
  # GET /research_papers
  # GET /research_papers.json
  def index
    @research_papers = ResearchPaper.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @research_papers }
    end
  end

  # GET /research_papers/1
  # GET /research_papers/1.json
  def show
    @research_paper = ResearchPaper.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @research_paper }
    end
  end

  # GET /research_papers/new
  # GET /research_papers/new.json
  def new
    @research_paper = ResearchPaper.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @research_paper }
    end
  end

  # GET /research_papers/1/edit
  def edit
    @research_paper = ResearchPaper.find(params[:id])
  end

  # POST /research_papers
  # POST /research_papers.json
  def create
    @research_paper = ResearchPaper.new(params[:research_paper])

    respond_to do |format|
      if @research_paper.save
        format.html { redirect_to @research_paper, notice: 'Research paper was successfully created.' }
        format.json { render json: @research_paper, status: :created, location: @research_paper }
      else
        format.html { render action: "new" }
        format.json { render json: @research_paper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /research_papers/1
  # PUT /research_papers/1.json
  def update
    @research_paper = ResearchPaper.find(params[:id])

    respond_to do |format|
      if @research_paper.update_attributes(params[:research_paper])
        format.html { redirect_to @research_paper, notice: 'Research paper was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @research_paper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /research_papers/1
  # DELETE /research_papers/1.json
  def destroy
    @research_paper = ResearchPaper.find(params[:id])
    @research_paper.destroy

    respond_to do |format|
      format.html { redirect_to research_papers_url }
      format.json { head :no_content }
    end
  end
end
