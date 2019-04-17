void clock() {
  print('${getAngleBetweenArrows(3, 15)}');
  print('${getAngleBetweenArrows(9, 00)}');
}

double getHourAngle(int h, int min) {
  double gradInOneHour = 360 / (12 * 60);

  var angle = (h * 60 + min) * gradInOneHour;
  if(angle > 180) {
    return 360 - angle;
  }
  return angle;
}

double getMinutesAngle(int minutes) {
  return minutes * 360 / 60;
}

double getAngleBetweenArrows(int h, int m) {
  return (getHourAngle(h, m) - getMinutesAngle(m)).abs();
}
