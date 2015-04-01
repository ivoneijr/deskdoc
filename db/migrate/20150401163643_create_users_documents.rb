class CreateUsersDocuments < ActiveRecord::Migration
  def change
    create_table :users_documents do |t|
      t.belongs_to :user, index: true
      t.belongs_to :document, index: true

      t.timestamps null: false
    end
  end
end
