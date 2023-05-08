class Chat {
  final String groupName;
  final String lastMessage;
  final int iconNumber;
  final String time;
  final String password;
  final int unreadCount;

  Chat({
    required this.groupName,
    required this.lastMessage,
    required this.iconNumber,
    required this.time,
    required this.password,
    this.unreadCount = 0,
  });
}

List<Chat> chatsData = [
  Chat(
    groupName: "Group 1",
    lastMessage: "Welcome to Group 1",
    iconNumber: 1,
    time: "3m ago",
    password: "group1",
    unreadCount: 2,
  ),
  Chat(
    groupName: "Group 2",
    lastMessage: "Welcome to Group 2",
    iconNumber: 2,
    time: "8m ago",
    password: "group2",
    unreadCount: 1,
  ),
  Chat(
    groupName: "Group 3",
    lastMessage: "Welcome to Group 3",
    iconNumber: 3,
    time: "5d ago",
    password: "group3",
    unreadCount: 0,
  ),
  Chat(
    groupName: "Group 4",
    lastMessage: "Welcome to Group 4",
    iconNumber: 4,
    time: "5d ago",
    password: "group4",
    unreadCount: 0,
  ),
  Chat(
    groupName: "Group 5",
    lastMessage: "Welcome to Group 5",
    iconNumber: 5,
    time: "6d ago",
    password: "group5",
    unreadCount: 0,
  ),
  Chat(
    groupName: "Group 6",
    lastMessage: "Welcome to Group 6",
    iconNumber: 6,
    time: "3m ago",
    password: "group6",
    unreadCount: 1,
  ),
  Chat(
    groupName: "Group 7",
    lastMessage: "Welcome to Group 7",
    iconNumber: 7,
    time: "8m ago",
    password: "group7",
    unreadCount: 0,
  ),
  Chat(
    groupName: "Group 8",
    lastMessage: "Welcome to Group 8",
    iconNumber: 8,
    time: "5d ago",
    password: "group8",
    unreadCount: 2,
  ),
  Chat(
    groupName: "Group 9",
    lastMessage: "Welcome to Group 9",
    iconNumber: 9,
    time: "5d ago",
    password: "group9",
    unreadCount: 0,
  ),
  Chat(
    groupName: "Group 10",
    lastMessage: "Welcome to Group 10",
    iconNumber: 10,
    time: "6d ago",
    password: "group10",
    unreadCount: 0,
  ),
];
