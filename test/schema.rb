ActiveRecord::Schema.define(:version => 0) do
  create_table :test_records, :force => true do |t|
    t.integer :price_in_cents, :msrp_in_cents, :burning_in_cents
  end
  create_table :test_picky_records, :force => true do |t|
    t.integer :price_in_cents, :price
  end
end