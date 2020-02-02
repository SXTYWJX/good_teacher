class RobotAssistant{
  static RobotAssistant _robotAssistant;

  RobotAssistant._internal(){}

  factory RobotAssistant() => _getRobot();
  static RobotAssistant get robot => _getRobot();

  static RobotAssistant _getRobot(){
    if(_robotAssistant!=null)return _robotAssistant;
    _robotAssistant=new RobotAssistant._internal();
    return _robotAssistant;
  }

  String replyToUser(String msg){
    if(msg==null || msg.compareTo("")==0)return null;
    String temp=msg.trim();
    int weekdayNum=DateTime.now().weekday;
    if(msg.compareTo("1")==0){
      switch (weekdayNum){
        case 1:return "今天是星期一";break;
        case 2:return "今天是星期二";break;
        case 3:return "今天是星期三";break;
        case 4:return "今天是星期四";break;
        case 5:return "今天是星期五";break;
        case 6:return "今天是星期六";break;
        case 7:return "今天是星期天";break;
      }
    }
    return "武汉加油，中国加油";
  }
}