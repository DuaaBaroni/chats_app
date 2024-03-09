
class UserModel{
  final String image;
  final String name;
  final String lastMsg;
  final String date;
  final Function() onTap;

  UserModel({required this.image, required this.name, required this.lastMsg, required this.date, required this.onTap});
}

List<UserModel> user=[
  UserModel(image: "assets/pro-1.png", name: "Duaa Baroni", lastMsg: "Thanks thanks", date:"11:16 AM", onTap: () {  } ),
  UserModel(image: "assets/pro-2.jpg", name: "Rofida Ehab", lastMsg: "hi", date: "2:15 PM", onTap: () {  }),
  UserModel(image: "assets/pro-3.jpg", name: "Wessam", lastMsg: "hello ", date: "4:30 PM", onTap: () {  }),
  UserModel(image: "assets/pro-4.jpg", name: "Dina", lastMsg: "Done", date: "5:20 PM", onTap: () {  }),
  UserModel(image: "assets/pro-5.jpg", name: "Walaa", lastMsg: "Hello dear ", date: "6:00 PM", onTap: () {  }),
  UserModel(image: "assets/pro-6.jpeg", name: "Dalia", lastMsg: "How are u", date: "6:54 PM", onTap: () {  }),
  UserModel(image: "assets/pro-7.jpg", name: "Ola", lastMsg: "How to do it", date: "7:10 PM", onTap: () {  }),
  UserModel(image: "assets/pro-8.jpg", name: "moderated", lastMsg: "Done , I did it", date: "7:30 PM", onTap: () {  }),
  UserModel(image: "assets/pro-4.jpg", name: "sahar", lastMsg: "okey", date: "8:30 PM", onTap: () {  }),
];