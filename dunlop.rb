#will dunlops code
class Bank
  def initialize(name, email, acc, address, phone, pin)
    @name = name
    @email = email
    @acc = acc
    @address = address
    @phone = phone
    @pin = pin
  end
  attr_accessor :name, :email, :acc, :address, :phone, :pin

  def login
    system "clear"

  puts  "\e[32m       ░░░▒▒▒▒▓▓▓█████████▓▓▓▒▒▒▒░░     "
  puts  "     ################################    "
  puts  "    #############  WILL  #############   "
  puts  "   ############### BANK ###############  "
  puts  "  ###################################### "
  puts  " ░░░░░▒▒▒▒▒▒▓▓▓▓▓████████▓▓▓▓▓▒▒▒▒▒▒░░░░░\e[0m"


    puts "\e[31mHello \e[35m#{name}\e[31m\nPlease enter your PIN: \e[0m"
    @reqpin = gets.chomp.to_i
    if @reqpin == Will.pin
      Will.menu
    else
      puts "INCORRECT PIN"
      sleep(2)
      login
    end
  end

  def menu
    system "clear"
    puts "\e[31mWelcome \e[35m#{name}\e[31m\nWhat would you like to do today?\e[36m"
    puts "Balance       |     Details"
    puts "Withdraw      |     Deposit"
    puts"\n\e[31mQuit\e[0m"

    @a = gets.chomp
    case @a
    when "Balance"
      balance
    when "Withdraw"
      withdraw
    when "Deposit"
      deposit
    when "Details"
      details
    when "Quit"
      quit
    else
      puts "ERROR!! Try again"
      sleep(0.4)
      menu
    end
  end
    def balance
      system "clear"
      puts "\e[31mYou currently have \e[35m$#{@bal}\e[31m in your account\e[0m"
      sleep(2)
      menu

    end

    def withdraw
      system "clear"
      puts "\e[31mHow much would you like to withdraw?\e[0m"
      @with = gets.chomp.to_i
      if @with > @bal.to_i
        system "clear"
        puts "\e[31mCan not withdraw more than your balance\e[0m"
        sleep(2)
        menu
      elsif @with < @bal
        @bal = @bal - @with
        system "clear"
        puts "\e[35m$#{@with}\e[31m was taken from your account."
        puts "\e[35m$#{@bal}\e[31m remaining.\e[0m"
        sleep(2)
        menu
      else
        system "clear"
        puts "\e[31mThere was an error, please try again\e[0m"
        withdraw
      end
    end

    def deposit
      system "clear"
      puts "\e[31mHow much would you like to deposit?\e[0m"
      @dep = gets.chomp.to_i
      @bal = @bal.to_i + @dep
      system "clear"
      puts "\e[35m$#{@dep}\e[31m was placed in your account."
      puts "\e[35m$#{@bal}\e[31m remaining.\e[0m"
      sleep(2)
      menu
    end

    def details
      system "clear"
      puts "\e[31mYour details are as follows"
      puts "\e[31mName: \e[35m#{Will.name}"
      puts "\e[31mEmail: \e[35m#{Will.email}"
      puts "\e[31mAccountNo: \e[35m#{Will.acc}"
      puts "\e[31mAddress: \e[35m#{Will.address}"
      puts "\e[31mPhone: \e[35m#{Will.phone}\e[0m"
      sleep(5)
      menu
    end

    def quit
      system "clear"
      puts "\e[31mThankyou for using WillBank\e[0m"
      sleep(2)
      system "clear"
    end
    def self.all?
      ObjectSpace.each_object(self).to_a
    end
end

Will = Bank.new("Will", "not@fake.com", 80085, "23 Road st", "0432968858", 1337)
@bal = 600
@bal.to_i
Will.login
