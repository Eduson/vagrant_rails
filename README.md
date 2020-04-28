- [Установка необходимых компонентов](#установка-необходимых-компонентов)
- [Развертывание виртуальной машины](#развертывание-виртуальной-машины)
- [Настройки для подключения к БД с основной машины](#настройки-для-подключения-к-бд-с-основной-машины)
- [Команды для rbenv](#команды для-rbenv)

# Установка необходимых компонентов
1. Установить VirtualBox `https://www.virtualbox.org/wiki/Downloads`
2. Установить Vagrant `https://www.vagrantup.com/downloads.html`
3. Установить плагины к Vagrant из репозитория `https://github.com/dotless-de/vagrant-vbguest`
  * `vagrant plugin install vagrant-vbguest`
  * `vagrant plugin install vagrant-disksize`

# Развертывание виртуальной машины

1. `git clone git@github.com:Eduson/vagrant_rails.git`
1. Перейти в папку с проектом
1. Инициализировать submodule `cd files/eduson`
1. Обновить submodule `git submodule update`
1. Вернуться в корень проекта `cd ../..`
1. `vagrant up`
1. Заходим на гостевую машину `vagrant ssh`
1. С гостевой машины - переходим в проект (в конфиг добавлен alias `eduson`)
1. Устанавливаем гемы `bundle install`
1. Устанавливаем фронтенд зависимости `yarn install`
1. Скопировать свои ssh ключи или добавить новые командой `ssh-keygen`
1. Разворачиваем дамп БД `make update_db`
1. Запускаем приложение `foreman start`

# Настройки для подключения к БД с основной машины

  * Host: `localhost`
  * Port: `15432`
  * Initial Database: `eduson_development`
  * User Name: `eduson`
  * Password: `eduson`

# Команды для rbenv

* `rbenv versions` - список установленных версий ruby
* `rbenv version` - отображает активную версию ruby
* `rbenv install -l` - список всех доступных версий ruby
* `rbenv install 2.4.10` - установка ruby
* `rbenv uninstall 2.4.10` - удаление ruby
* `rbenv local 2.4.10` - подключение версии ruby в обход global версии ruby
* `rbenv local --unset` - отключение локальной версии ruby
* `rbenv global 2.4.10` - установка версии ruby в качестве основной версии
