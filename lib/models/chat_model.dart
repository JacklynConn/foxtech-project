class ChatModel {
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
    avatarUrl:
        "https://d2qp0siotla746.cloudfront.net/img/use-cases/profile-picture/template_0.jpg",
    isOnline: true,
  ),
  ChatModel(
    name: "Esther Howard",
    message: "Hey where are you?",
    time: "17:30",
    avatarUrl:
        "https://th.bing.com/th/id/OIP.XSZAFm-5JI7nriDLwZqRQQHaE7?rs=1&pid=ImgDetMain",
  ),
  ChatModel(
    name: "Ralph Edwards",
    message: "What's up?",
    time: "5:00",
    avatarUrl:
        "https://assets.oaveyes.com/Images/Sites/V/ValleyOphthalmology/903540.png?crop=(7.72,1.68,%201274.92,714.48)&srotate=0",
    isOnline: true,
  ),
  ChatModel(
    name: "Carmen Beltran",
    message: "Are you there?",
    time: "10:30",
    avatarUrl:
        "https://th.bing.com/th/id/OIP.fw4UdyXXGm-m-ALE_g3gFgHaE4?w=650&h=428&rs=1&pid=ImgDetMain",
  ),
  ChatModel(
    name: "Jenny Wilson",
    message: "How are you doing?",
    time: "15:30",
    avatarUrl:
        "https://th.bing.com/th/id/R.b6350e5011a7b61996efada66d100575?rik=7D6Ni11ELDKMoA&pid=ImgRaw&r=0",
    isOnline: true,
  ),
  ChatModel(
    name: "Esther Howard",
    message: "Hey where are you?",
    time: "17:30",
    avatarUrl: "https://d2v5dzhdg4zhx3.cloudfront.net/web-assets/images/storypages/short/linkedin-profile-picture-maker/dummy_image/thumb/004.webp",
  ),
  ChatModel(
    name: "Ralph Edwards",
    message: "What's up?",
    time: "5:00",
    avatarUrl: "https://d2v5dzhdg4zhx3.cloudfront.net/web-assets/images/storypages/short/linkedin-profile-picture-maker/dummy_image/thumb/004.webp",
    isOnline: true,
  ),
  ChatModel(
    name: "Carmen Beltran",
    message: "Are you there?",
    time: "10:30",
    avatarUrl: "https://enquirypharmacy.com/wp-content/uploads/2023/06/A-users-guide-1024x1024.webp",
  ),
  ChatModel(
    name: "Jenny Wilson",
    message: "How are you doing?",
    time: "15:30",
    avatarUrl: "https://marketplace.canva.com/EAFEits4-uw/1/0/1600w/canva-boy-cartoon-gamer-animated-twitch-profile-photo-oEqs2yqaL8s.jpg",
    isOnline: true,
  ),
  ChatModel(
    name: "Esther Howard",
    message: "Hey where are you?",
    time: "17:30",
    avatarUrl: "https://imgv3.fotor.com/images/gallery/cartoon-character-generated-by-Fotor-ai-art-creator.jpg",
  ),
  ChatModel(
    name: "Ralph Edwards",
    message: "What's up?",
    time: "5:00",
    avatarUrl: "https://a.storyblok.com/f/191576/1200x800/215e59568f/round_profil_picture_after_.webp",
    isOnline: true,
  ),
];
