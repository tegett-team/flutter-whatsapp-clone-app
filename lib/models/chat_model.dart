class ChatModel {
  final String name;
  String message;
  final String time;
  final String imageUrl;

  ChatModel({this.name, this.message, this.time, this.imageUrl});
}

List<ChatModel> messagesData = [
  new ChatModel(
      name: "Martin Fowler",
      message: "Hey how it's going !",
      time: "15:30",
      imageUrl: "https://i.pravatar.cc/201"),
  new ChatModel(
      name: "Linux tolvar",
      message: "Hey I love flutter!",
      time: "17:30",
      imageUrl: "https://i.pravatar.cc/202"),
  new ChatModel(
      name: "Steve Wozniak",
      message: "Wassup !",
      time: "5:00",
      imageUrl: "https://i.pravatar.cc/203"),
  new ChatModel(
      name: "Robert martin",
      message: "bye!",
      time: "10:30",
      imageUrl: "https://i.pravatar.cc/204"),
  new ChatModel(
      name: "Dennis Ritchie",
      message: "see you later",
      time: "12:30",
      imageUrl: "https://i.pravatar.cc/205"),
  new ChatModel(
      name: "Paul hudson",
      message: "good morning monday",
      time: "15:30",
      imageUrl: "https://i.pravatar.cc/206"),
];
