class CreateSpiders < ActiveRecord::Migration
  def change
    create_table(:spiders) do |t|
      t.string :name
    end
  end
end
