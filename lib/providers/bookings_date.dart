import 'package:flutter/material.dart';
import 'package:date_util/date_util.dart';
import 'package:wy/models/bookings_date.dart';

class BookingsDates with ChangeNotifier {
  static int days =
      DateUtil().daysInMonth(DateTime.now().month, DateTime.now().year);
  List _listOfDates = List<String>.generate(days, (i) => "${i + 1}");

  List<BookingsDateBooking> alldate = [];

  List get listOfDates {
    return [..._listOfDates];
  }

  List<HoursBooking> _hours = [
    HoursBooking("07.00"),
    HoursBooking("09.00"),
    HoursBooking("11.00"),
    HoursBooking("13.00"),
    HoursBooking("15.00"),
    HoursBooking("17.00"),
  ];

  List get listhours {
    return [..._hours];
  }
}
