class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :email
      t.integer :cohort_id
      t.integer :survey_form_id
      t.integer :non_tech_resources_id
      t.integer :tech_resources_id

      t.timestamps
    end
  end
end
