class CreateSurveyForms < ActiveRecord::Migration[7.0]
  def change
    create_table :survey_forms do |t|
      t.integer :user_id
      t.string :name
      t.integer :feeling_check
      t.string :learned_today
      t.text :feedback

      t.timestamps
    end
  end
end
