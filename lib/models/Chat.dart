class Chat {
  final String groupName, lastMessage, icon, time;

  Chat({
    required this.groupName,
    required this.lastMessage,
    required this.icon,
    required this.time,
  });
}

List<Chat> chatsData = [
  Chat(
    groupName: "Group 1",
    lastMessage: "Hey guys, what's up?",
    icon: "1",
    time: "10:30 AM",
  ),
  Chat(
    groupName: "Group 2",
    lastMessage: "Anyone have the password?",
    icon: "2",
    time: "11:45 AM",
  ),
  Chat(
    groupName: "Group 3",
    lastMessage: "Let's plan for the weekend trip!",
    icon: "3",
    time: "Yesterday",
  ),
  Chat(
    groupName: "Group 4",
    lastMessage: "Who's bringing the snacks?",
    icon: "4",
    time: "2d ago",
  ),
  Chat(
    groupName: "Group 5",
    lastMessage: "Don't forget to submit the project by Monday",
    icon: "5",
    time: "2d ago",
  ),
  Chat(
    groupName: "Group 6",
    lastMessage: "Did anyone read chapter 5 for the exam?",
    icon: "6",
    time: "3d ago",
  ),
  Chat(
    groupName: "Group 7",
    lastMessage: "Let's meet at the coffee shop at 5",
    icon: "7",
    time: "3d ago",
  ),
  Chat(
    groupName: "Group 8",
    lastMessage: "I'm running late, save me a seat!",
    icon: "8",
    time: "4d ago",
  ),
  Chat(
    groupName: "Group 9",
    lastMessage: "We need to reschedule the meeting",
    icon: "9",
    time: "4d ago",
  ),
  Chat(
    groupName: "Group 10",
    lastMessage: "Who's up for a game night this weekend?",
    icon: "10",
    time: "5d ago",
  ),
];
