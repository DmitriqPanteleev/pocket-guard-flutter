# pocket_guard_flutter_app

### Guidelines

**АРХИТЕКТУРА**
Приложение разделено надвое:
1. *core* -- ядро
2. *features* -- функционал приложения, доступный пользователю
Каждая *feature* определяется примерно так -- *lib/features/**$name**/(**model**, **repository**, **presenter**, **view**)*
Получается примерное такое **Model | Presenter / Repository | Framework**
Тут по порядку идут:
1. *model* -- основные данные, например *транзакция = доход | расход*
2. *repository* -- объект, использующий данные, сохраняющий их и т.п.
3. *presenter* -- *BLoC* или *Cubit*, использующий *repository*
4. *view* -- *Widget*, использующий *presenter*
В таком порядке каждый уровень **не должен** зависеть от следующего за собой

**ГИТ**
1. сначала надо создать ветку с названием фичи (например "LaunchScreen_Layout")
2. на нее переходишь через чекаут, в ней все делаешь, потом коммитишь 
  (коммит тоже желательно информативный писать)
1. потом пушишь в эту же ветку и кидаешь pull request, где reviewer'ом ставишь меня
2. если работа доделана до конца, то удаляешь ветку

**ПО РАЗРАБОТКЕ** 
1. сами экраны распределяются по папкам в путь data/ui/{название модуля}
2. нужно максимально декомпозировать элементы и делать это с умом
3. каждый экран - отдельная папка
4. начинать верстать лучше с компонентов. тут есть важная вещь:
    если компонент используется больше, чем на двух экранах (как текстфилд или кнопка),
    то он выносится в data/comonents/{папка с названием компонента}/{название компонента}

    если компонент используется только на одном экране (как контрол ввода кода из эмейла),
    то достаточно будет хранить его в папке экрана (разумеется, внутри /components)
5. по неймингу сделал пример в auth_module (там же пусть и ведется работа над первым модулем)
