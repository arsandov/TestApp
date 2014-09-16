class CreateArchivos < ActiveRecord::Migration
  def change
    create_table :archivos do |t|

      t.timestamps
    end
  end
end
