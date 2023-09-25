class CreateMoviegoers < ActiveRecord::Migration
  def change
    create_table :moviegoers do |t|
      t.string :name
      t.string :string
      t.string :provider
      t.string :string
      t.string :uid
      t.string :string

      t.timestamps null: false
    end
  end

  def down
    drop_table :moviegoers
  end
end
