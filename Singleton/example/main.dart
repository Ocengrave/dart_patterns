import '../singleton.dart';

/*
|--------------------------------------------------------------------------
| Singleton
|--------------------------------------------------------------------------
| Одиночка (англ. Singleton) — порождающий шаблон проектирования, гарантирующий,
| что в однопоточном приложении будет единственный экземпляр некоторого класса,
| и предоставляющий глобальную точку доступа к этому экземпляру.
*/
void main() {
  final Singleton settings = Singleton.instance;

  settings.set('max-connections', 7);

  final Singleton params = Singleton.instance;

  print(params.get('max-connections'));
}
