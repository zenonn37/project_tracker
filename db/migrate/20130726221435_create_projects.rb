class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :project_name
      t.string :project_type
      t.string :project_deploy
      t.string :project_sdk
      t.string :project_languages
      t.string :project_frameworks
      t.string :project_end
      t.boolean :complete, default: false
      t.text :project_details
      	

      t.timestamps
    end
    add_index :projects, :project_name
  end
end
