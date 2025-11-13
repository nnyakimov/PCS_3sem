Отчет по практической работе 1

Установим расширение Flutter для VS Code. Проверим, корректно ли все установилось с помощью команды flutter --version.

<img width="605" height="61" alt="image" src="https://github.com/user-attachments/assets/a652678e-e753-40f3-b141-8e89cad90948" />

Установил Android Studio и скачал в нем плагин для работы с Flutter 

<img width="618" height="377" alt="image" src="https://github.com/user-attachments/assets/edb2a652-f455-4153-acd9-3608b7fa035c" />


Создал AVD 

<img width="616" height="93" alt="image" src="https://github.com/user-attachments/assets/59da38a2-ab50-49a1-b1bc-d8f25d1a74a8" />


Установил VS Code, поставил расширения Flutter, запустил начальное приложение  


<img width="615" height="344" alt="image" src="https://github.com/user-attachments/assets/b2176244-36ab-4712-acd8-af7208f58db8" />


Чтобы успешно принять лицензии android, для начала в android studio в настройках нашел параметры SDK. 
Установил во вкладке SDK tools утилиту «Android SDK Command-line Tools (latest). Далее в терминале написал flutter doctor --android-licenses 


<img width="617" height="371" alt="image" src="https://github.com/user-attachments/assets/afaaffe2-4dd4-489b-9f71-39f68abf556a" />


<img width="373" height="53" alt="image" src="https://github.com/user-attachments/assets/dbe77ffd-31a5-4db9-bcab-972e1ae1eb3d" />

<img width="546" height="136" alt="image" src="https://github.com/user-attachments/assets/ccf50408-7878-4a94-8d9d-c11bf3fdc7da" />


Запустил эмулятор android, устройство отображается терминале после ввода команды flutter devices. 


<img width="532" height="534" alt="image" src="https://github.com/user-attachments/assets/ecd05f68-38f3-43f5-b23c-c916a20790ed" />


Создал apk-сборку с помощью команды flutter build apk --debug 


<img width="511" height="26" alt="image" src="https://github.com/user-attachments/assets/20f4dc6c-2cd8-4659-8673-12a4933c9460" />

