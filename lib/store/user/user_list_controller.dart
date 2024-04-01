import 'package:flutter_study/service/api_server.dart';
import 'package:get/get.dart';

import '../../model/user.dart';

class UserListController extends GetxController {
  var _stoneCount = 1000.obs;

  final _users = <Rx<User>>[].obs;
  final _chatList = <Rx<User>>[].obs;

  int get chatCount => _chatList.length;
  RxList<Rx<User>> get chatList => _chatList;
  int get stoneCount => _stoneCount.value;
  RxList<Rx<User>> get users => _users;

  // 添加钻石数量
  void addStoneCount(int count) {
    _stoneCount.value += count;
    update();
  }

  // 添加User
  void addUser(Rx<User> user) {
    _users.add(user);
    update();
  }

  // 添加Chat by id
  void addUserToChatById(String id, String msg) {
    // check is id in _chatList
    final user = _users.firstWhere((element) => element.value.id == id);
    user.value.addMessage(msg);
    if (_chatList.indexWhere((element) => element.value.id == id) == -1) {
      _chatList.add(user);
    }
    update();
  }

  // 删除Chat by id
  void deleteChatById(String id) {
    _chatList.removeWhere((element) => element.value.id == id);
    update();
  }

  void initUsers() async {
    var users = await ApiService.getUsers();
    _users.addAll(users);
  }

  @override
  void onInit() {
    super.onInit();
    initUsers();
  }

  // 减少钻石数量
  void reduceStoneCount(int count) {
    _stoneCount -= count;
    // update();
  }

  // 删除User
  void removeUser(User user) {
    _users.remove(user);
    update();
  }

  // 设置钻石数量
  void setStoneCount(int count) {
    _stoneCount.value = count;
    update();
  }
}
