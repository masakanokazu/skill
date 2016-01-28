class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :last_name
      t.string :first_name
      t.string :salutation
      t.string :username
      t.string :company
      t.string :department
      t.string :title
      t.string :country
      t.string :city
      t.string :state
      t.string :postalcode
      t.string :address
      t.string :tel
      t.string :fax
      t.string :mobile
      t.string :url
      t.integer :gender
      t.date :birthdate
      t.string :guraduation
      t.integer :workexperience
      t.string :language
      t.string :japanese
      t.string :english
      t.string :toeic
      t.string :toefl
      t.integer :Q01
      t.integer :Q02
      t.integer :Q03
      t.integer :Q04
      t.integer :Q05
      t.string :comment
      t.integer :status
      t.string :note

      t.timestamps null: false
    end
  end
end
