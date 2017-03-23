class CreateAboutPages < ActiveRecord::Migration[5.0]
  def change
    create_table :about_pages do |t|
      t.text :about_text
      t.text :contact_info

      t.timestamps
    end
  end
end
