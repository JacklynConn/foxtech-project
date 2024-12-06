class MessageModel {
  int id;
  String message;
  String messageTime;
  bool isMe;
  String messageStatus;
  String messageType;
  String messageStatusTime;

  MessageModel({
    required this.id,
    required this.message,
    required this.messageTime,
    required this.isMe,
    required this.messageStatus,
    required this.messageType,
    required this.messageStatusTime,
  });
}

// dummy chat messages data of 10
List<MessageModel> listMessage = [
  MessageModel(
    id: 1,
    message: 'Hi, How are you?',
    messageTime: '10:00',
    isMe: true,
    messageStatus: 'Delivered',
    messageType: 'Text',
    messageStatusTime: '10:00',
  ),
  MessageModel(
    id: 2,
    message: 'I am fine, thank you.',
    messageTime: '10:01',
    isMe: false,
    messageStatus: 'Delivered',
    messageType: 'Text',
    messageStatusTime: '10:01',
  ),
  MessageModel(
    id: 3,
    message: 'What are you doing?',
    messageTime: '10:02',
    isMe: true,
    messageStatus: 'Delivered',
    messageType: 'Text',
    messageStatusTime: '10:02',
  ),
  MessageModel(
    id: 4,
    message: 'I am working on my project.',
    messageTime: '10:03',
    isMe: false,
    messageStatus: 'Delivered',
    messageType: 'Text',
    messageStatusTime: '10:03',
  ),
  MessageModel(
    id: 5,
    message: 'Can you help me with my project?',
    messageTime: '10:04',
    isMe: true,
    messageStatus: 'Delivered',
    messageType: 'Text',
    messageStatusTime: '10:04',
  ),
  MessageModel(
    id: 6,
    message: 'Sure, I can help you.',
    messageTime: '10:05',
    isMe: false,
    messageStatus: 'Delivered',
    messageType: 'Text',
    messageStatusTime: '10:05',
  ),
  MessageModel(
    id: 7,
    message: 'Thank you so much.',
    messageTime: '10:06',
    isMe: true,
    messageStatus: 'Delivered',
    messageType: 'Text',
    messageStatusTime: '10:06',
  ),
  MessageModel(
    id: 8,
    message: 'You are welcome.',
    messageTime: '10:07',
    isMe: false,
    messageStatus: 'Delivered',
    messageType: 'Text',
    messageStatusTime: '10:07',
  ),
  MessageModel(
    id: 9,
    message: 'Goodbye.',
    messageTime: '10:08',
    isMe: true,
    messageStatus: 'Delivered',
    messageType: 'Text',
    messageStatusTime: '10:08',
  ),
  MessageModel(
    id: 10,
    message: 'Goodbye.',
    messageTime: '10:09',
    isMe: false,
    messageStatus: 'Delivered',
    messageType: 'Text',
    messageStatusTime: '10:09',
  ),
];
