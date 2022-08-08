import 'package:flutter/cupertino.dart';

import '../Model/messageModel.dart';

class MessageViewModel with ChangeNotifier{
List<Data?> list = [];

setValues(){
  list = [ Data(message: "hai",mute: false,name: "Laravel",seenType: 1,time: "11:59 AM",userId: 1,image: "https://helostatus.com/wp-content/uploads/2021/09/pic-for-WhatsApp-HD.jpg"),
    Data(message: "How Are You",mute: false,name: "Html",seenType: 2,time: "12:01 PM",userId: 1,image: "https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832__340.jpg"),
    Data(message: "hai",mute: true,name: "Php",seenType: 3,time: "01:43 PM",userId: 1,image: "https://helostatus.com/wp-content/uploads/2021/09/pic-for-WhatsApp-HD.jpg"),
    Data(message: "hai",mute: false,name: "Dart",seenType: 2,time: "11:59 AM",userId: 1,image: "https://i.pinimg.com/736x/b8/77/01/b877010ffb513c92901aaa4b06dd8691--moon-images-ocean-sunset.jpg"),
    Data(message: "hai",mute: false,name: "Flutter",seenType: 1,time: "11:59 AM",userId: 1,image: "https://www.pixelstalk.net/wp-content/uploads/2016/07/Free-Download-1080p-Full-HD-Images.jpg"),
    Data(message: "hai",mute: true,name: "Yii2",seenType: 3,time: "02:23 PM",userId: 1,image: "https://helostatus.com/wp-content/uploads/2021/09/pic-for-WhatsApp-HD.jpg"),
    Data(message: "hai",mute: false,name: "Mysql",seenType: 1,time: "11:46 AM",userId: 1,image: "https://helostatus.com/wp-content/uploads/2021/09/pic-for-WhatsApp-HD.jpg"),];
  notifyListeners();
}
}