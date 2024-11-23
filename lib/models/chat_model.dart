class ChatModel {
  String id;
  String name;
  String image;
  String lastMessage;
  String listMessageTime;

  ChatModel({
    required this.id,
    required this.name,
    required this.image,
    required this.lastMessage,
    required this.listMessageTime,
  });

  static List<ChatModel> chatList = [
    ChatModel(
      id: '1',
      name: 'Jenny Wilson',
      image: 'assets/images/user1.jpg',
      lastMessage: 'How are you?',
      listMessageTime: '5m ago',
    ),
    ChatModel(
      id: '2',
      name: 'Esther Howard',
      image: 'assets/images/user2.jpg',
      lastMessage: 'What are you doing?',
      listMessageTime: '2h ago',
    ),
    ChatModel(
      id: '3',
      name: 'Catherine Rogers',
      image: 'assets/images/user3.jpg',
      lastMessage: 'Hello?',
      listMessageTime: '1d ago',
    ),
    ChatModel(
      id: '4',
      name: 'Jenny Wilson',
      image: 'assets/images/user4.jpg',
      lastMessage: 'How are you?',
      listMessageTime: '5m ago',
    ),
    ChatModel(
      id: '5',
      name: 'Esther Howard',
      image: 'assets/images/user5.jpg',
      lastMessage: 'What are you doing?',
      listMessageTime: '2h ago',
    ),
    ChatModel(
      id: '6',
      name: 'Catherine Rogers',
      image: 'assets/images/user6.jpg',
      lastMessage: 'Hello?',
      listMessageTime: '1d ago',
    ),
    ChatModel(
      id: '7',
      name: 'Jenny Wilson',
      image: 'assets/images/user7.jpg',
      lastMessage: 'How are you?',
      listMessageTime: '5m ago',
    ),
    ChatModel(
      id: '8',
      name: 'Esther Howard',
      image: 'assets/images/user8.jpg',
      lastMessage: 'What are you doing?',
      listMessageTime: '2h ago',
    ),
    ChatModel(
      id: '9',
      name: 'Catherine Rogers',
      image: 'assets/images/user9.jpg',
      lastMessage: 'Hello?',
      listMessageTime: '1d ago',
    ),
    ChatModel(
      id: '10',
      name: 'Jenny Wilson',
      image: 'assets/images/user10.jpg',
      lastMessage: 'How are you?',
      listMessageTime: '5m ago',
    ),
  ];
}
