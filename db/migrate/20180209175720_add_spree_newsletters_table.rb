class AddSpreeNewslettersTable < SolidusSupport::Migration[4.2]
  def change
    create_table :spree_newsletters  do |t|
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end
