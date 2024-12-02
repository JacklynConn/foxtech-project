class ChatModel{
  final String name;
  final String message;
  final String time;
  final String avatarUrl;
  bool isOnline = false;
  DateTime? date;
  bool isSelected = false;

  ChatModel({
    required this.name,
    required this.message,
    required this.time,
    required this.avatarUrl,
    this.isOnline = false,
    this.date,
  });
}

List<ChatModel> listChat = [
  ChatModel(
    name: "Jenny Wilson",
    message: "How are you doing?",
    time: "15:30",
    avatarUrl: "https://d2qp0siotla746.cloudfront.net/img/use-cases/profile-picture/template_0.jpg",
    isOnline: true,
  ),
  ChatModel(
    name: "Esther Howard",
    message: "Hey where are you?",
    time: "17:30",
    avatarUrl: "https://th.bing.com/th/id/OIP.XSZAFm-5JI7nriDLwZqRQQHaE7?rs=1&pid=ImgDetMain",
  ),
  ChatModel(
    name: "Ralph Edwards",
    message: "What's up?",
    time: "5:00",
    avatarUrl: "https://assets.oaveyes.com/Images/Sites/V/ValleyOphthalmology/903540.png?crop=(7.72,1.68,%201274.92,714.48)&srotate=0",
    isOnline: true,
  ),
  ChatModel(
    name: "Carmen Beltran",
    message: "Are you there?",
    time: "10:30",
    avatarUrl: "https://th.bing.com/th/id/OIP.fw4UdyXXGm-m-ALE_g3gFgHaE4?w=650&h=428&rs=1&pid=ImgDetMain",
  ),
  ChatModel(
    name: "Jenny Wilson",
    message: "How are you doing?",
    time: "15:30",
    avatarUrl: "https://randomuser.me/api/portraits",
    isOnline: true,
  ),
  ChatModel(
    name: "Esther Howard",
    message: "Hey where are you?",
    time: "17:30",
    avatarUrl: "https://randomuser.me/api/portraits",
  ),
  ChatModel(
    name: "Ralph Edwards",
    message: "What's up?",
    time: "5:00",
    avatarUrl: "https://randomuser.me/api/portraits",
    isOnline: true,
  ),
  ChatModel(
    name: "Carmen Beltran",
    message: "Are you there?",
    time: "10:30",
    avatarUrl: "https://randomuser.me/api/portraits",
  ),
  ChatModel(
    name: "Jenny Wilson",
    message: "How are you doing?",
    time: "15:30",
    avatarUrl: "https://randomuser.me/api/portraits",
    isOnline: true,
  ),
  ChatModel(
    name: "Esther Howard",
    message: "Hey where are you?",
    time: "17:30",
    avatarUrl: "https://randomuser.me/api/portraits",
  ),
  ChatModel(
    name: "Ralph Edwards",
    message: "What's up?",
    time: "5:00",
    avatarUrl: "https://randomuser.me/api/portraits",
    isOnline: true,
  ),
  ChatModel(
    name: "Carmen Beltran",
    message: "Are you there?",
    time: "10:30",
    avatarUrl: "https://randomuser.me/api/",
  ),
  ChatModel(
    name: "Jenny Wilson",
    message: "How are you doing?",
    time: "15:30",
    avatarUrl: "https://randomuser.me/api/portraits",
    isOnline: true,
  ),
  ChatModel(
    name: "Esther Howard",
    message: "Hey where are you?",
    time: "17:30",
    avatarUrl: "https://randomuser.me/api/portraits",
  ),
  ChatModel(
    name: "Ralph Edwards",
    message: "What's up?",
    time: "5:00",
    avatarUrl: "https://randomuser.me/api/portraits",
    isOnline: true,
  ),
];