class AddLanguageIdToExamDefinition < ActiveRecord::Migration
  def change
	add_column :exam_definitions, :language_id, :integer


  end
end
