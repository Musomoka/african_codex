class CreateResearchPapers < ActiveRecord::Migration
  def change
    create_table :research_papers do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.string :instituition, null: false
      t.text :abstract
      t.text :paper
      t.timestamps
    end
  end
end
