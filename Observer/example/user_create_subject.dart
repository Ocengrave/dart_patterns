import '../observer_interface.dart';
import '../subject.dart';
import 'user_create_event.dart';

class UserCreatedSubject implements Subject<UserCreatedEvent> {
  final List<Observer<UserCreatedEvent>> _observers = [];

  @override
  void addObserver(Observer<UserCreatedEvent> observer) {
    _observers.add(observer);
  }

  @override
  void removeObserver(Observer<UserCreatedEvent> observer) {
    _observers.remove(observer);
  }

  @override
  void notifyObservers(UserCreatedEvent data) {
    for (var observer in _observers) {
      observer.notify(data);
    }
  }
}