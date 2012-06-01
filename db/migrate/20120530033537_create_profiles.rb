class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :no
      t.string :name
      t.date :jointime
      t.date :lefttime
      t.date :birthday
      t.string :qq
      t.string :email
      t.string :phone
      t.string :city
      t.string :bornat
      t.string :slogan
      t.string :sweibo
      t.string :qweibo
      t.string :site

      t.timestamps
    end
  end
end
