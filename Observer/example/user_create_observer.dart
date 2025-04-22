import '../observer_interface.dart';
import 'user_create_event.dart';

class UserCreatedObserver implements Observer<UserCreatedEvent> {
  @override
  void notify(UserCreatedEvent data) {
    print('Пользователь создан: ${data.username}');
  }
}