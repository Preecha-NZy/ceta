class Car < ApplicationRecord
    belongs_to :supplier, class_name: "supplier", foreign_key: "supplier_id"
end
