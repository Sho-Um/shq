class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :comp_text, null:false
      t.string :incomp_text, null:false
      t.timestamps
    end
  end
end
