class RemoveLanguageFromQuestions < ActiveRecord::Migration
  def up
  end

  def down
  
  	remove_column :questions, :languague

  end
end
