class CreateMailboxes < ActiveRecord::Migration
  def change
    create_table :mailboxes do |t|
      t.string :s_email
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end
