Sequel.migration do
  up do
    create_table :domains do
      primary_key :id
      String :name, null: false
      String :suffix
      Integer :length, null: false
      Date :expires

      index :name
      index :length
      index :expires
    end
  end

  down do
    drop_table(:domains)
  end
end
