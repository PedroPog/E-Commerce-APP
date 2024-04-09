import 'package:intl/intl.dart';

class Formatter{
  static String formatDate(DateTime? date){
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }
  static String formatCurrency(double amount){
    return NumberFormat.currency(locale: 'pt_BR',symbol: 'R\$').format(amount);
  }
  static String formatPhoneNumber(String phoneNumber){
    //10 digitos pois (11) 91234-1234
    if(phoneNumber.length==11){
      return '(${phoneNumber.substring(0,2)}) ${phoneNumber.substring(2,7)} ${phoneNumber.substring(7)}';
    }
    return phoneNumber;
  }
  static String internationalFormatPhoneNumber(String phoneNumber){
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'),'');
    String countryCode = '+${digitsOnly.substring(0,2)}';
    digitsOnly = digitsOnly.substring(2);

    final formattefNumber = StringBuffer();
    formattefNumber.write('($countryCode)');

    int i = 0;
    while(i <digitsOnly.length){
      int groupLength = 2;
      if(i == 0 && countryCode == '+1'){
        groupLength = 3;
      }

      int end = i + groupLength;
      formattefNumber.write(digitsOnly.substring(1,end));

      if(end<digitsOnly.length){
        formattefNumber.write('  ');
      }
      i = end;
    }
    return digitsOnly;
  }
}