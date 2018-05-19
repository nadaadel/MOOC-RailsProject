class LecturesController < InheritedResources::Base
   before_action :authenticate_user! 

   def upvote
       @lecture = Lecture.find(params[:id])
       @lecture.upvote_by current_user
       redirect_to lecture_path
   end

   def downvote
    @lecture = Lecture.find(params[:id])
    @lecture.downvote_by current_user
    redirect_to lecture_path
   end

   def spam
    @lecture = Lecture.find(params[:id])
    @lecture.users << current_user
    redirect_to lecture_path
   end
  private

    def lecture_params
      params.require(:lecture).permit(:name, :content, :attachment, :course_id)
    end

end

