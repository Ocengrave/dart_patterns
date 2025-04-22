import 'user_create_event.dart';
import 'user_create_observer.dart';
import 'user_create_subject.dart';

/*
|--------------------------------------------------------------------------
| Observer
|--------------------------------------------------------------------------
| Наблюдатель (англ. Observer) — поведенческий шаблон проектирования.
| Также известен как «подчинённые» (Dependents). Реализует у класса механизм,
| который позволяет объекту этого класса получать оповещения об изменении
| состояния других объектов и тем самым наблюдать за ними.
*/
void main()
{
  final subject = UserCreatedSubject();
  final observer = UserCreatedObserver();

  subject.addObserver(observer);

  subject.notifyObservers(UserCreatedEvent('admin'));
}