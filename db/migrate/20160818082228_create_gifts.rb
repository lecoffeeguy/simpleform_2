class CreateGifts < ActiveRecord::Migration[5.0]
  def change
    create_table :gifts do |t|
      t.string :fname2
      t.string :lname2
      t.string :message
      t.string :fname1
      t.string :lname1
      t.string :email

      t.timestamps
    end
  end
end
