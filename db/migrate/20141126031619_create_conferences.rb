class CreateConferences < ActiveRecord::Migration
  def change
    create_table :conferences do |t|

      t.string :name
      t.string :location
      t.string :dates
      t.string :url
      t.string :twitter
      t.string :reg_phase

      t.timestamps
    end
  end
end
