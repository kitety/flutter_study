class User {
  String name;
  double distance;
  String id;
  List<String> messages;

  User(this.name, this.distance, this.id, this.messages);

  // add message
  void addMessage(String msg) {
    messages.add(msg);
  }
}
