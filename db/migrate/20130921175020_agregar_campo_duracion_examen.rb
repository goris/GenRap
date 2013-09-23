class AgregarCampoDuracionExamen < ActiveRecord::Migration
  def up
  	add_column :master_exams, :duracion, :integer
  end

  def down
  end
end
