Sequel.migration do
  up do
    add_column :domains, :checked_on, Date
    from(:domains).where(:expires).update(checked_on: Date.today)
  end

  down do
    drop_column :domains, :checked_on
  end
end

