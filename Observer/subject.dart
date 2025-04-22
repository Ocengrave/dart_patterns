import 'observer_interface.dart';

abstract interface class Subject<T> {
  void addObserver(Observer<T> observer);
  void removeObserver(Observer<T> observer);
  void notifyObservers(T data);
}