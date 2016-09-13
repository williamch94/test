class Customer
  def initialize(name, email, account, address, contact)
    @name = name
    @email = email
    @account = account
    @address = address
    @contact = contact
  end
attr_accessor :name, :email, :account, :address, :contact
end

puts "Lets login"
puts "what is your name?"
userName = gets.chomp
puts "what is your email?"
userEmail = gets.chomp
puts "what is your address?"
userAddress = gets.chomp
puts "what is your contact number?"
userContact = gets.chomp

#puts "password?"
#userPassword = gets.chomp
#if
  #userPassword = abc
#puts "You have logged in Mr/Mrs. #{userName}, let's check out your bank account."


#else put "please enter your password again"
  #userPassword = gets.chomp
#end

class Bankaccount
  def initialize(balance,accountnumber)
    @balance = balance
    @accountnumber = accountnumber
 end
attr_accessor :balance, :accountnumber
 end

trent = Customer.new("name", "email",  Bankaccount.new(200,1334), "address", "number" )
trent.account.balance = trent.account.balance - 110


def withdraw(withdraw)
  @withdraw = withdraw
end
def balance(balance)
  @balance = balance - @withdraw
end
print "Your balance is "
puts  trent.account.balance
puts "What file do you want to read?"
filename = gets.chomp
target = open(filename, 'a+')
puts "Now please enter your withdraw: "
withdraw = $stdin.gets.chomp
puts "balance: 50 "
balance =
puts "Ok, thank you very much "
target.write(balance)
target.write("\n")
target.rewind
puts "=" * 15
print target.read
target.close
