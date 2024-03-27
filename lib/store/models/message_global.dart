import 'package:flutter/widgets.dart';

import '../../model/user.dart';

class AppGlobalModelView extends ChangeNotifier {
  int _stoneCount = 1000;
  final List<User> _users = [];
  final List<User> _chatList = [];

  int get chatCount => _chatList.length;
  List<User> get chatList => _chatList;
  int get stoneCount => _stoneCount;
  List<User> get users => _users;

  // 添加钻石数量
  void addStoneCount(int count) {
    _stoneCount += count;
    notifyListeners();
  }

  // 添加User
  void addUser(User user) {
    _users.add(user);
    notifyListeners();
  }

  // 添加Chat by id
  void addUserToChatById(String id, String msg) {
    // check is id in _chatList
    final user = _users.firstWhere((element) => element.id == id);
    user.addMessage(msg);
    if (_chatList.indexWhere((element) => element.id == id) == -1) {
      _chatList.add(user);
    }
    notifyListeners();
  }

  // 删除Chat by id
  void deleteChatById(String id) {
    _chatList.removeWhere((element) => element.id == id);
    notifyListeners();
  }

  // 减少钻石数量
  void reduceStoneCount(int count) {
    _stoneCount -= count;
    notifyListeners();
  }

  // 删除User
  void removeUser(User user) {
    _users.remove(user);
    notifyListeners();
  }

  // 设置钻石数量
  void setStoneCount(int count) {
    _stoneCount = count;
    notifyListeners();
  }
}
