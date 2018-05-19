ActiveAdmin.register Lecture do 
    permit_params  :name, :content, :attachment , :course_id
end