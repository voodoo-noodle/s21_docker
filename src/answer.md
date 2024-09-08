### Part 1

* Устанавливаем Ubuntu.

Да, я знаю, что по заданию другая версия, но я захотел установить эту. Еще и графический интерфейс поставил

![ubuntu_version](./screenshots/task_1_1.png "ubuntu_version")

* Скачиваем, устанавливаем Gitlab Runner

```sudo curl -L --output /usr/local/bin/gitlab-runner "https://gitlab-runner-downloads.s3.amazonaws.com/latest/binaries/gitlab-runner-linux-arm64"```

```sudo chmod +x /usr/local/bin/gitlab-runner```

```sudo useradd --comment 'Gitlab Runner' --create-home gitlab-runner --shell /bin/bash```

```sudo gitlab-runner install --user=gitlab-runner --working-directory=/home/gitlab-runner```

![download_gitlab_runner](./screenshots/task_1_2.png "download_gitlab_runner")

* Регистрируем

```gitlab-runner register```

![register](./screenshots/task_1_3.png "register")

* Проверяем

![runner_status](./screenshots/task_1_4.png "runner_status")

### Part 2

Сборка

* В файле gitlab-ci.yml добавим этап запуска сборки через мейк файл из проекта C2.

![task_2_1](./screenshots/task_2_1.png "task_2_1")

Файлы, полученные после сборки (артефакты), сохраним в произвольную директорию со сроком хранения 30 дней.

* Изначально видим вот такую ошибку после выполнения

![task_2_2](./screenshots/task_2_2.png "task_2_2")

* Побеждаем ее благодаря [статье](https://stackoverflow.com/questions/63154881/the-runner-of-type-shell-dont-work-job-failed-system-failure-preparing-envi)

![task_2_3](./screenshots/task_2_3.png "task_2_3")

### Part 3

* Напишем этап для CI, который запускает скрипт кодстайла (clang-format).

![task_3_1](./screenshots/task_3_1.png "task_3_1")

![task_3_2](./screenshots/task_3_2.png "task_3_2")

* Если кодстайл не прошел, то «зафейлим» пайплайн.

![task_3_3](./screenshots/task_3_3.png "task_3_3")

* В пайплайне отобразим вывод утилиты clang-format.

![task_3_4](./screenshots/task_3_4.png "task_3_4")

### Part 4

* Напишем этап для CI, который запускает интеграционные тесты из того же проекта.

![task_4_1](./screenshots/task_4_1.png "task_4_1")

* Запустим этот этап автоматически только при условии, если сборка и тест кодстайла прошли успешно.

* Если тесты не прошли, то «зафейлим» пайплайн.

* В пайплайне отобразим вывод, что интеграционные тесты успешно прошли / провалились.

![task_4_2](./screenshots/task_4_2.png "task_4_2")

### Part 5

* Поднимем вторую виртуальную машину.

Настраиваем сеть

![task_5_1](./screenshots/task_5_1.png "task_5_1")

![task_5_2](./screenshots/task_5_2.png "task_5_2")

Добавляем на вторую машину ssh-ключ

![task_5_3](./screenshots/task_5_3.png "task_5_3")

* Напишем этап для CD, который «разворачивает» проект на другой виртуальной машине.

![task_5_4](./screenshots/task_5_4.png "task_5_4")

### Part 6

![task_6_1](./screenshots/task_6_1.png "task_6_1")
