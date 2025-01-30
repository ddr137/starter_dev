extension ExpireDateTime on DateTime {
  /// Menghitung durasi antara [this] dan waktu sekarang.
  Duration timeUntilExpire() {
    DateTime now = DateTime.now();
    return difference(now);
  }

  /// Mengembalikan durasi dalam format yang lebih mudah dibaca.
  String readableDuration() {
    Duration duration = timeUntilExpire();
    int days = duration.inDays;
    int hours = duration.inHours % 24;
    int minutes = duration.inMinutes % 60;
    int seconds = duration.inSeconds % 60;

    return 'Hari: $days, Jam: $hours, Menit: $minutes, Detik: $seconds';
  }
}
