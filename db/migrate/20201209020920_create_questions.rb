class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.text :comp_text, null:false
      t.text :incomp_text, null:false
      t.timestamps
    end
  end
end
