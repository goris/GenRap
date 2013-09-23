class AddLanguageIdToExams < ActiveRecord::Migration
  def change
  	add_column :exams, :language_id, :integer
  end
end
