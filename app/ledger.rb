module ExpenseTracker
  ResultRecord = Struct.new(:success?, :expense_id, :error_message)

  class Ledger
    def record(expense)
      DB[:expenses].insert(expense)
      id = DB[:expenses].max(:id)
      ResultRecord.new(true, id, nil)
    end

    def expenses_on(date)
    end
  end
end
