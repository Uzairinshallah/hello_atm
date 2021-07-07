import 'dart:io';
import 'dart:core';


List<String> d_history = [];
List<String> w_history = [];
class create_account
{
  var f_name,l_name,dob,acc_type,address,bal,p;
  late int balance,acc_pin;
  List<String> accounts = [];


  //counter, array of objects, map,  cash , unique pin, transaction history
  // github, retirement,
  void new_account_one()
  {
    for(var i=0;i<1;i++)
    {
      print('Enter your first name :');
      f_name =stdin.readLineSync();
      accounts.add(f_name);
      print('Enter your last name :');
      l_name =stdin.readLineSync();
      accounts.add(l_name);
      print('Enter your date of birth :');
      dob =stdin.readLineSync();
      accounts.add(dob);
      print('Enter your account type :');
      acc_type =stdin.readLineSync();
      accounts.add(acc_type);
      print('Enter your balance :');
      bal =stdin.readLineSync();
      balance=int.parse(bal);
      accounts.add(bal);
      print('Enter your account pin :');
      p =stdin.readLineSync();
      acc_pin=int.parse(p);
      accounts.add(p);
      print('Enter your address :');
      address =stdin.readLineSync();
      accounts.add(address);

    }

  }

  void deposit_history()
  {

      var l = d_history.length;
      print(d_history.length);
      if (d_history.length > 0 )
      {
        print('Your Deposit History ');
        for (int i = 0; i < l; i++) {
          print('You have deposited :' + d_history[i]);
        }
      }
      else
        {
          print('Your deposit history is empty ');
        }
  }

  void withdraw_history()
  {

    var l = w_history.length;
    print(w_history.length);
    if (w_history.length > 0 )
    {
      print('Your Withdraw History ');
      for (int i = 0; i < l; i++) {
        print('You have Withdraw :' + w_history[i]);
      }
    }
    else
    {
      print('Your withdraw history is empty ');
    }
  }

  void v()
  {
    print(accounts.length);

    var sum = accounts.length;

    for(int i=0;i<sum;i++)
      {
        print('Your account details:' );
        print('\nYour first name is: '+ accounts[i]);i++;
        print('Your last name is: ' + accounts[i]);i++;
        print('Your dat of birth is: ' + accounts[i]);i++;
        print('Your account type is: '+ accounts[i]);i++;
        //print('Your account number is: $balance');
        print('Your account pin is: '+ accounts[i+1]);i++;
        print('Your address is: ' + accounts[i+1]);i++;

      }

  }

  int get g_blnc {
    return balance;
  }

  void set set_blnc(int bb) {
    this.balance = bb;
  }

  int get g_acc_pin {
    return acc_pin;
  }

  void set set_acc_pin(int bb) {
    this.acc_pin = bb;
  }

  void check_balance()
  {
    print('Mr. $f_name your current balance is $g_blnc');
  }

  void change_pin()
  {
    print('Enter your new account pin :');
    var p = stdin.readLineSync();
    var pp = int.parse(p!);
    set_acc_pin = pp;
    print('You account pin is updated to $g_acc_pin');
  }

  void view()
  {
    print('Your account details:');
    print('\nYour first name is: $f_name');
    print('Your last name is: $l_name');
    print('Your dat of birth is: $dob');
    print('Your account type is: $acc_type');
    //print('Your account number is: $balance');
    print('Your account pin is: $acc_pin');
    print('Your address is: $address');
  }
}

void main()
{
  create_account obj = new create_account();

  outterloop:
  for(int i=1;i>=1;i++) {
    print('************ATM APP************ ');
    print('\n1:  Create Account');
    print('2:  View Account');
    print('3:  Deposit');
    print('4:  Withdraw');
    print('5:  Transfer');
    print('6:  Check Balance');
    print('7:  Change Pin');
    print('8:  Check deposit history');
    print('9:  Check withdraw history');
    print('10:  Exit');

    print('Enter your choice (1-8)');
    var choice = stdin.readLineSync();
    if(choice=='1')
      {
        obj.new_account_one();
      }
    else if(choice=='2')
    {
      obj.v();
    }
    else if(choice=='3')
    {
      print('Enter the amount you want to deposit ');
      var d = stdin.readLineSync();
      var dd = int.parse(d!);
      var sum = obj.g_blnc+dd;
      d_history.add(d);

      obj.set_blnc = sum ;
      print('current balance  ${obj.g_blnc}');
    }
    else if(choice=='4')
    {
      print('Enter the amount you want to withdraw ');
      var d = stdin.readLineSync();
      var dd = int.parse(d!);
      w_history.add(d);

      print('cash widdraw :$dd');

      if(dd<=obj.g_blnc)
      {
        int sum = obj.g_blnc-dd;


        obj.set_blnc = sum ;
        print('current balance  ${obj.g_blnc}');

        //print(dd);

        // print('Enter your amount :');
        // var amt = stdin.readLineSync();
        // var amount = int.parse(amt!);
        int c1000=0,c500=0,c5000=0;

        for(;;)
        {
          if(dd>=5000)
          {
            c5000++;
            dd=dd-5000;
          }
          else if (dd>=1000 && dd<5000)
          {
            c1000++;
            dd=dd-1000;
          }
          else if (dd>=500 && dd<1000)
          {
            c500++;
            dd=dd-500;
          }

          else if (dd<500)
          {
            break;
          }
        }
        print('5000 Notes: $c5000');
        print('1000 Notes: $c1000');
        print('500 Notes: $c500');
      }
      else
      {
        print('You exceed the limit');
      }


    }
    else if(choice=='5')
    {
      print('Enter your account pin ');
      var d_p = stdin.readLineSync();
      var dd_p = int.parse(d_p!);
      if(dd_p==obj.g_acc_pin) {
        print('Enter the amount you want to Transfer ');
        var d = stdin.readLineSync();
        var dd = int.parse(d!);
        print('Enter the account name to which money you want to Transfer ');
        var ann = stdin.readLineSync();
        print(obj.accounts[0]);
        if(ann==obj.accounts[0])
          {
            print(' Money Transferred Successfully ');
            if (dd <= obj.g_blnc) {
              var sum = obj.g_blnc - dd;

              print('You amount has been transferred to Mr. $ann');
              obj.set_blnc = sum;
              print('Your remaining balance  ${obj.g_blnc}');
            }
            else {
              print('You exceed the limit');
            }

          }
        else
          {
            print('Account not found');

          }

      }
      else
      {
        print('Your account pin is not valid');
      }
    }
    else if(choice=='6')
    {
      obj.check_balance();
    }
    else if(choice=='7')
    {
      print('Enter your current account pin');
      var p=stdin.readLineSync() ;
      var pp=int.parse(p!);
      if(obj.g_acc_pin==pp)
      {
        obj.change_pin();
      }
    }
    else if(choice=='8')
    {
      obj.deposit_history();
    }
    else if(choice=='9')
    {
      obj.withdraw_history();
    }
    else if(choice=='10')
    {
      exit(0);
    }
  }
}