import 'package:intl/intl.dart';

class DTF {
  DateTime dateTime;

  DTF(this.dateTime);

  // Format to a specific string pattern (e.g., 'yyyy-MM-dd HH:mm:ss')
  String format(String pattern) {
    final formatter = DateFormat(pattern);
    return formatter.format(dateTime);
  }

  // Format as a short date (e.g., 'dd/MM/yyyy')
  String toShortDate() {
    return DateFormat('dd/MM/yyyy').format(dateTime);
  }

  // Format as a long date (e.g., 'Monday, January 1, 2025')
  String toLongDate() {
    return DateFormat('EEEE, MMMM d, yyyy').format(dateTime);
  }

  // Format as a time string (e.g., '14:30:00')
  String toTime() {
    return DateFormat('HH:mm:ss').format(dateTime);
  }

  // Format as a human-readable string (e.g., 'Jan 1, 2025, 2:30 PM')
  String toHumanReadable() {
    return DateFormat('MMM d, yyyy, h:mm a').format(dateTime);
  }

  // Static method to parse a string into DateTime based on a pattern
  static DateTime parse(String dateString, String pattern) {
    final formatter = DateFormat(pattern);
    return formatter.parse(dateString);
  }

  // Static method to get the current date and time
  static DateTime now() {
    return DateTime.now();
  }

  // Check if the date is in the past
  bool isPast() {
    return dateTime.isBefore(DateTime.now());
  }

  // Check if the date is in the future
  bool isFuture() {
    return dateTime.isAfter(DateTime.now());
  }

  // Check if the date is today
  bool isToday() {
    final now = DateTime.now();
    return dateTime.year == now.year &&
        dateTime.month == now.month &&
        dateTime.day == now.day;
  }

  // Add a duration to the current date
  DateTime addDuration(Duration duration) {
    return dateTime.add(duration);
  }

  // Subtract a duration from the current date
  DateTime subtractDuration(Duration duration) {
    return dateTime.subtract(duration);
  }
}
