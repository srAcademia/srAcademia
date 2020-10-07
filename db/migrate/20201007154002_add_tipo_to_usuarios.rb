class AddTipoToUsuarios < ActiveRecord::Migration[6.0]
  def change
    add_column :usuarios, :tipo, :integer
  end
end
