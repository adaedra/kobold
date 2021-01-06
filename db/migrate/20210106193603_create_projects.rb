class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects, id: :uuid do |t|
      t.string :name, null: false, limit: 255
      t.string :slug, null: false, limit: 255, unique: true
      t.timestamps
    end
  end
end
