class SemestersController < ApplicationController
  before_action :set_semester, only: %i[ show edit update destroy schedule ]

  # GET /semesters
  def index
    @semesters = Semester.all
  end

  # GET /semesters/1
  def show
  end

  # GET /semesters/new
  def new
    @semester = Semester.new
  end

  # GET /semesters/1/edit
  def edit
  end

  # GET /semesters/1/schedule

  def schedule

  end
  # POST /semesters
  def create
    @semester = Semester.new(semester_params)

    respond_to do |format|
      if @semester.save
        format.html {
          redirect_to @semester, notice: "Semester was successfully created."
        }
        format.turbo_stream
      else
        render :new, status: :unprocessable_entity
      end
    end
  end

  # PATCH/PUT /semesters/1
  def update
    if @semester.update(semester_params)
      redirect_to @semester, notice: "Semester was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /semesters/1
  def destroy
    @semester.destroy!

    respond_to do |format|
      format.html {
        redirect_to semesters_url, notice: "Semester was successfully destroyed.", status: :see_other}
      format.turbo_stream
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_semester
      @semester = Semester.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def semester_params
      params.require(:semester).permit(:term, :year)
    end
end
