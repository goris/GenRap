class AddLanguageToQuestions < ActiveRecord::Migration
  def change

	 add_column :questions, :languague, :string
 
  end
end
