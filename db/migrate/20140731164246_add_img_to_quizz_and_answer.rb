class AddImgToQuizzAndAnswer < ActiveRecord::Migration
  def change
    add_attachment :quizzes, :img
    add_attachment :as, :img
  end
end
