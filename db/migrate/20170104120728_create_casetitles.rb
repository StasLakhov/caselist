class CreateCasetitles < ActiveRecord::Migration[5.0]
  def change
    create_table :casetitles do |t|
      t.string :title
      t.text :summary

      t.timestamps
    end
  end
end
