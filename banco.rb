class Account
    attr_reader :name
    attr_reader :balance
    
    def initialize(name,balance=100)
        @name=name
        @balance=balance
    end
    
    private
    def pin
        @pin=1234
    end
    
    private
    def pin_error
        return "Access denied: incorrect PIN."
    end
    
    public 
    def display_balance(pin_number)
    puts pin_number==pin ? "Balance: $#{@balance}." :pin_error  
    end
    
    public
    def withdraw(pin_number,amount)

       if pin_number==pin
           if amount>balance
               puts "no tienes tanto rial"
           else
                @balance-=amount
           puts "Withdrew #{amount}. New balance: $#{@balance}."
       end
       else
           pin_error
       end
    end
    
     public
    def deposit(pin_number,amount)
       if pin_number==pin
           @balance+=amount
           puts "You Deposit #{amount}. New balance: $#{@balance}."
       else
           pin_error
       end
    end
end

checking_account= Account.new("Neddy",300)
checking_account.withdraw(11, 5)
checking_account.display_balance(1234)
checking_account.withdraw(1234, 500_000)
checking_account.display_balance(1234)
checking_account.deposit(1234,3)