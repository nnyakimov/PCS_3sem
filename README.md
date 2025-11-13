Программирование корпоративных систем Отчет по практическому занданию номер 4 
ЭФБО-06-23 
Якимов Никита Николаевич

Цели ПЗ:

Создать заметки с помощью Flutter-приложения и подготовленного шаблона 
Использовать ListView.builder и отработать работу с виджитами состояния такие как: StatefulWidget
Отработать работу с формами и валидацией

Код кнопки удаления 
onDismissed: (direction) => _delete(note),
                  child: ListTile(
                    title: Text(
                      note.title.isEmpty ? '(без названия)' : note.title,
                    ),


Поиск 
Widget _buildSearchField() {
    return TextField(
      controller: _searchController,
      autofocus: true,
      decoration: const InputDecoration(
        hintText: 'Поиск...',
        border: InputBorder.none,
        hintStyle: TextStyle(color: Colors.black54),
      ),
      style: const TextStyle(color: Colors.black),
    );
  }

Первый экран
<img width="464" height="1015" alt="image" src="https://github.com/user-attachments/assets/1636567f-84e8-44c9-a17b-a398f3f6d59a" />

Создание заметки 
<img width="478" height="1013" alt="image" src="https://github.com/user-attachments/assets/4c4a48d2-477b-43a9-9c03-331ef126502c" />

Созданная заметка 
<img width="471" height="1016" alt="image" src="https://github.com/user-attachments/assets/65c63ad9-36e6-43e7-b814-495294973450" />

Удаление заметки свайпом 
<img width="476" height="1014" alt="image" src="https://github.com/user-attachments/assets/5135bcdd-7b1b-4205-adff-2ecd08e04fdc" />



