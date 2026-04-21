// AP/Telangana holiday list + calendar helpers.
// Update [getApHolidays2026] keys each year.

/// Returns all public holidays as 'MM-DD' keys (year-agnostic matching).
List<String> getApHolidays2026() => const [
      // National holidays
      '01-26', // Republic Day
      '08-15', // Independence Day
      '10-02', // Gandhi Jayanti
      '12-25', // Christmas
      // Hindu festivals (approximate 2026 dates — update yearly)
      '01-14', // Pongal / Makar Sankranti
      '03-21', // Ugadi
      '04-14', // Sri Rama Navami (approx)
      '08-17', // Varalakshmi Vratam (approx)
      '09-07', // Ganesh Chaturthi (approx)
      '10-05', // Bathukamma (AP/TS regional, approx)
      '10-21', // Diwali (approx)
      // Muslim festivals (approx 2026)
      '03-20', // Ramzan / Eid al-Fitr (approx)
      '05-28', // Bakrid / Eid al-Adha (approx)
      // Christian
      '04-03', // Good Friday (approx)
    ];

const Map<String, String> _holidayNames = {
  '01-26': 'Republic Day',
  '08-15': 'Independence Day',
  '10-02': 'Gandhi Jayanti',
  '12-25': 'Christmas',
  '01-14': 'Pongal',
  '03-21': 'Ugadi',
  '04-14': 'Sri Rama Navami',
  '08-17': 'Varalakshmi Vratam',
  '09-07': 'Ganesh Chaturthi',
  '10-05': 'Bathukamma',
  '10-21': 'Diwali',
  '03-20': 'Eid al-Fitr',
  '05-28': 'Eid al-Adha',
  '04-03': 'Good Friday',
};

String _key(DateTime dt) =>
    '${dt.month.toString().padLeft(2, '0')}-${dt.day.toString().padLeft(2, '0')}';

bool isHolidayToday([DateTime? now]) {
  final dt = now ?? DateTime.now();
  return getApHolidays2026().contains(_key(dt));
}

bool isWeekend([DateTime? now]) {
  final wd = (now ?? DateTime.now()).weekday;
  return wd == DateTime.saturday || wd == DateTime.sunday;
}

/// Returns the holiday name for today, or null if it's not a holiday.
String? holidayNameToday([DateTime? now]) {
  final dt = now ?? DateTime.now();
  return _holidayNames[_key(dt)];
}
