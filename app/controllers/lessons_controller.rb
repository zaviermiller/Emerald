class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show, :edit, :update, :destroy]
  before_action :get_course

  # GET /lessons
  # GET /lessons.json
  def index
    @lessons = Lesson.all
    @current_lesson ||= Lesson.find_by_id(params[:lesson_id]) || Lesson.find_by_id(params[:id])
    @current_course = Course.find(@current_lesson.course_id)
  end

  # GET /lessons/1
  # GET /lessons/1.json
  def show
  end

  # GET /lessons/new
  def new
    @lesson = Lesson.new
    @current_course ||= Course.find_by_id(params[:course_id]) || Course.find_by_id(params[:id])
  end

  # GET /lessons/1/edit
  def edit
    @current_lesson ||= Lesson.find_by_id(params[:lesson_id]) || Lesson.find_by_id(params[:id])
    @current_course = Course.find(@current_lesson.course_id)
    if current_user = @current_lesson.user_id
    else
      redirect_to courses_path
    end
      if @current_lesson.code.include?(@current_course.answer)
        @current_lesson.complete = 1
        flash[:notice] = "Lesson complete! "
        @current_lesson.save 
      end
  end

  # POST /lessons
  # POST /lessons.json
  def create
  @lesson = Lesson.new(lesson_params)

    respond_to do |format|
      if @lesson.save
        format.html { redirect_to edit_lesson_path(@lesson) }
        format.json { render :show, status: :created, location: @lesson }
      else
        format.html { render :new }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lessons/1
  # PATCH/PUT /lessons/1.json
  def update
    respond_to do |format|
      if @lesson.update(lesson_params)
        format.html { redirect_to edit_lesson_path(@lesson) }
        format.json { render :show, status: :ok, location: @lesson }
      else
        format.html { render :edit }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lessons/1
  # DELETE /lessons/1.json
  def destroy
    @lesson.destroy
    respond_to do |format|
      format.html { redirect_to lessons_url }
      format.json { head :no_content }
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson
      @lesson = Lesson.find(params[:id])
    end

def get_course
    @course = Course.find_by_id(params[:course_id])
end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lesson_params
      params.require(:lesson).permit(:code, :course_id, :user_id, :create)
    end
end
