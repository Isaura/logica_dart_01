void main() {
  const dayToMinutes = 1440;
  const hourToMinutes = 60;

  int time = 2234;

  int days = 0;
  if (time > dayToMinutes) {
    days = time ~/ dayToMinutes;
    time %= dayToMinutes;
  }

  int hours = 0;
  if (time > hourToMinutes) {
    hours = time ~/ hourToMinutes;
    time %= hourToMinutes;
  }

  final minutes = time;

  String msg = '';
  if (days > 0) {
    final dayComplement = days == 1 ? 'dia' : 'dias';
    msg += '$days $dayComplement, ';
  }
  if (hours > 0) {
    final hourComplement = hours == 1 ? 'hora' : 'horas';
    msg += '$hours horas, ';
  }
  msg += '$minutes minutos';
  print(msg);
}
