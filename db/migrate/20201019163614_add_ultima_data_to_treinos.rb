class AddUltimaDataToTreinos < ActiveRecord::Migration[6.0]
  def change
    add_column :treinos, :ultima_data, :date
  end
end
