# Отчет по DO5_SimpleDocker-1      
## Part 1. Готовый докер  
- Возьми официальный докер-образ с nginx и выкачай его при помощи docker pull.  
<figure>
    <img src="./screen/1_1.png" />
    <figcaption>скачаиваем nginx</figcaption>
</figure> 

- Проверь наличие докер-образа через docker images.  
<figure>
    <img src="./screen/1_2.png" />
    <figcaption>провеярем наличие образа</figcaption>
</figure>

- Запусти докер-образ через docker run -d [image_id|repository].  
<figure>
    <img src="./screen/1_3.png" />
    <figcaption>запуск докер-образа</figcaption>
</figure>

- Проверь, что образ запустился через docker ps.  
<figure>
    <img src="./screen/1_4.png" />
    <figcaption>вывод docker ps</figcaption>
</figure>

- Посмотри информацию о контейнере через docker inspect [container_id|container_name].
<figure>
    <img src="./screen/1_5.png" />
    <figcaption>вывод docker inspect</figcaption>
</figure>

- По выводу команды определи и помести в отчёт размер контейнера, список замапленных портов и ip контейнера.
<figure>
    <img src="./screen/1_6.png" />
    <figcaption>ip</figcaption>
    <img src="./screen/1_7.png" />
    <figcaption>список замапленных портов</figcaption>
    <img src="./screen/1_8.png" />
    <figcaption>размер контейнера</figcaption>
</figure>

- Останови докер образ через docker stop [container_id|container_name].  
- Проверь, что образ остановился через docker ps. 
- Запусти докер с портами 80 и 443 в контейнере, замапленными на такие же порты на локальной машине, через команду run.  
<figure>
    <img src="./screen/1_9.png" />
    <figcaption>останаваливаем докер</figcaption>
    <img src="./screen/1_10.png" />
    <figcaption>docker ps</figcaption>
</figure>

- Проверь, что в браузере по адресу localhost:80 доступна стартовая страница nginx.
<figure>
    <img src="./screen/1_11.png" />
    <figcaption>страница есть</figcaption>
</figure>

- Перезапусти докер контейнер через docker restart [container_id|container_name].  
- Проверь любым способом, что контейнер запустился.  
<figure>
    <img src="./screen/1_12.png" />
    <figcaption>перезапускаем докер и вывод docker ps</figcaption>
</figure>

## Part 2. Операции с контейнером  

- Прочитай конфигурационный файл nginx.conf внутри докер контейнера через команду exec.  
<figure>
    <img src="./screen/2_1.png" />
    <figcaption>читаем конфиг файл</figcaption>
</figure> 

- Создай на локальной машине файл nginx.conf.  
- Настрой в нем по пути /status отдачу страницы статуса сервера nginx.  
<figure>
    <img src="./screen/2_2.png" />
    <figcaption>создаем на локальной машине конфиг файл</figcaption>
</figure> 


- Скопируй созданный файл nginx.conf внутрь докер-образа через команду docker cp.  
<figure>
    <img src="./screen/2_3.png" />
    <figcaption>копируем конфиг файл</figcaption>
</figure> 

- Перезапусти nginx внутри докер-образа через команду exec.  
<figure>
    <img src="./screen/2_4.png" />
    <figcaption>перезапускаем nginx</figcaption>
</figure> 

- Проверь, что по адресу localhost:80/status отдается страничка со статусом сервера nginx.  
<figure>
    <img src="./screen/2_5.png" />
    <figcaption>открывем страницу</figcaption>
</figure> 

- Экспортируй контейнер в файл container.tar через команду export.  
<figure>
    <img src="./screen/2_6.png" />
    <figcaption>экспортирую контейнер</figcaption>
</figure> 

- Останови контейнер.  
<figure>
    <img src="./screen/2_7.png" />
    <figcaption>останавливаю контейнер</figcaption>
</figure> 

- Удали образ через docker rmi [image_id|repository], не удаляя перед этим контейнеры.  
<figure>
    <img src="./screen/2_8.png" />
    <figcaption>удаляю образ через docker rmi</figcaption>
</figure> 

- Удали остановленный контейнер.  
<figure>
    <img src="./screen/2_9.png" />
    <img src="./screen/2_10.png" />
    <figcaption>удаляю контейнер</figcaption>
</figure> 

- Импортируй контейнер обратно через команду import.  
<figure>
    <img src="./screen/2_11.png" />
    <figcaption>docker import</figcaption>
</figure> 

- Запусти импортированный контейнер.  
<figure>
    <img src="./screen/2_12.png" />
    <figcaption>docker run</figcaption>
</figure> 

- Проверь, что по адресу localhost:80/status отдается страничка со статусом сервера nginx.  
<figure>
    <img src="./screen/2_13.png" />
    <figcaption>содержание страницы</figcaption>
</figure> 

## Part 3. Мини веб-сервер  
- Напиши мини-сервер на C и FastCgi, который будет возвращать простейшую страничку с надписью Hello World!.  
<figure>
    <img src="./screen/3_3.png" />
    <figcaption>содержание server.c</figcaption>
</figure> 
- Напиши свой nginx.conf, который будет проксировать все запросы с 81 порта на 127.0.0.1:8080.  
<figure>
    <img src="./screen/3_1.png" />
    <figcaption>содержание nginx.conf</figcaption>
</figure> 
<figure>
    <img src="./screen/3_5.png" />
    <img src="./screen/3_6.png" />
    <figcaption>копируем внутрь контейнера, затем переходим в интерактивный режим</figcaption>
</figure> 

предварительно скачиваем библиотки: apt update  
apt-get install libfcgi-dev  
apt-get install spawn-fcgi  
apt-get install gcc  

- Запусти написанный мини-сервер через spawn-fcgi на порту 8080.  
<figure>
    <img src="./screen/3_9.png" />
    <figcaption>компилирую и запускаю</figcaption>
</figure> 

- Проверь, что в браузере по localhost:81 отдается написанная тобой страничка.  
<figure>
    <img src="screen/3_10.png" />
    <figcaption>содержание страницы</figcaption>
</figure> 

- Положи файл nginx.conf по пути ./nginx/nginx.conf (это понадобится позже).   

## Part 4. Свой докер  

- Напиши свой докер-образ, который:  
1) собирает исходники мини сервера на FastCgi из Части 3;

2) запускает его на 8080 порту;

3) копирует внутрь образа написанный ./nginx/nginx.conf;

4) запускает nginx.
<figure>
    <img src="screen/4_10.png" />
    <figcaption>содержание файла файла Docker</figcaption>
</figure> 

Собери написанный докер-образ через docker build при этом указав имя и тег.  
<figure>
    <img src="screen/4_3.png" />
    <img src="screen/4_4.png" />
    <figcaption>собираю</figcaption>
</figure> 

Проверь через docker images, что все собралось корректно.  
<figure>
    <img src="screen/4_5.png" />
    <figcaption>docker images</figcaption>
</figure> 

Запусти собранный докер-образ с маппингом 81 порта на 80 на локальной машине и маппингом папки ./nginx внутрь контейнера по адресу, где лежат конфигурационные файлы nginx'а (см. Часть 2).  
<figure>
    <img src="screen/4_6.png" />
    <figcaption>запускаю образ</figcaption>
</figure> 

Проверь, что по localhost:80 доступна страничка написанного мини сервера.  
<figure>
    <img src="screen/4_8.png" />
    <figcaption>содержание страницы</figcaption>
</figure> 

Допиши в ./nginx/nginx.conf проксирование странички /status, по которой надо отдавать статус сервера nginx.  
<figure>
    <img src="screen/4_2.png" />
    <figcaption>изменяю конфиг файл</figcaption>
</figure> 

Перезапусти докер-образ.  
Проверь, что теперь по localhost:80/status отдается страничка со статусом nginx  
Проверь, что теперь по localhost:80/status отдается страничка со статусом nginx  
<figure>
    <img src="screen/4_9.png" />
    <figcaption>перезапуск и содержание страницы</figcaption>
</figure>  

## Part 5. Dockle  

- Просканируй образ из предыдущего задания через dockle [image_id|repository].  
<figure>
    <img src="screen/5_6.png" />
    <img src="screen/5_7.png" />
    <figcaption>сканирую образ через dockle (пришлось запушить на docker hub, иначе не работало)</figcaption>
</figure>  


- Исправь образ так, чтобы при проверке через dockle не было ошибок и предупреждений.  
<figure>
    <img src="screen/5_3.png" />
    <img src="screen/5_4.png" />
    <figcaption>переделываю докерфайл(изменяю права доступа к некторым файлам, добавляю healthcheck, меняю пользователя, очищаю кэш пакетов apt)</figcaption>
</figure>  
<figure>
    <img src="screen/5_8.png" />
    <figcaption>так же написал sh скрипт для запуска FastCGI приложения</figcaption>
</figure>  
<figure>
    <img src="screen/5_1.png" />
    <img src="screen/5_2.png" />
    <figcaption>вывод dockle после изменений (оставшаяся ошибка связана с обновлением nginx из-за чего dockle выдает ошибку)</figcaption>
</figure>  

## Part 6. Базовый Docker Compose  

- Напиши файл docker-compose.yml, с помощью которого:

1) Подними докер-контейнер из Части 5 (он должен работать в локальной сети, т.е. не нужно использовать инструкцию EXPOSE и мапить порты на локальную машину).

<figure>
    <img src="screen/6_1.png" />
    <figcaption>поднял докер-контейнер из Части 5</figcaption>
</figure>  

2) Подними докер-контейнер с nginx, который будет проксировать все запросы с 8080 порта на 81 порт первого контейнера.

<figure>
    <img src="screen/6_2.png" />
    <figcaption>поднял докер-контейнер с nginx</figcaption>
</figure>  

- Замапь 8080 порт второго контейнера на 80 порт локальной машины.

<figure>
    <img src="screen/6_9.png" />
    <figcaption>yaml файл</figcaption>
</figure>  

- Останови все запущенные контейнеры.  
<figure>
    <img src="screen/6_4.png" />
    <figcaption>остановил</figcaption>
</figure>  

- Собери и запусти проект с помощью команд docker-compose build и docker-compose up.  
<figure>
    <img src="screen/6_10.png" />
    <img src="screen/6_11.png" />
    <figcaption>build</figcaption>
</figure>  
<figure>
    <img src="screen/6_7.png" />
    <img src="screen/6_6.png" />
    <figcaption>up</figcaption>
</figure>  

- Проверь, что в браузере по localhost:80 отдается написанная тобой страничка, как и ранее.  
<figure>
    <img src="screen/6_8.png" />
    <figcaption>показываю, что контейнеры запустились, затем содержание страницы</figcaption>
</figure> 
