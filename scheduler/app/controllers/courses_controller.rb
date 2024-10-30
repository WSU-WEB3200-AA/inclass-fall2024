class CoursesController < ApplicationController
  before_action :set_course, only: %i[ show edit update destroy ]

  # GET /courses
  def index
    @courses = Course.all
  end

  # GET /courses/1
  def show
  end

  # GET /courses/new
  def new
    @course = Course.new
  end

  # GET /courses/1/edit
  def edit
  end

  # POST /courses
  def create
    @course = Semester.new(course_params)

    respond_to do |format|
      if @course.save
        format.html {
          redirect_to @course, notice: "Course was successfully created."
        }
        format.turbo_stream
      else
        render :new, status: :unprocessable_entity
      end
    end
  end

  # PATCH/PUT /courses/1
  def update
    if @course.update(course_params)
      redirect_to courses_url, notice: "Course was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /courses/1
  def destroy
    @course.destroy!

    respond_to do |format|
      format.html {
        redirect_to courses_url, notice: "Course was successfully destroyed.", status: :see_other}
      format.turbo_stream
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def course_params
      params.require(:course).permit(:name, :title, :description, :credits)
    end
end
