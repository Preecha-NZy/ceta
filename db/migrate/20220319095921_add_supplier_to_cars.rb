class AddSupplierToCars < ActiveRecord::Migration[7.0]
  def change
    # add_reference :cars, :supplier, null: false, foreign_key: true
    add_column :cars, :supplier_id, :integer 
    
    Car.find_each do |car|
      car.supplier_id = 1
      car.save
    end
    
    change_column_null :cars, :supplier_id, false
    add_foreign_key :cars, :suppliers
    add_index :cars, :supplier_id
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
