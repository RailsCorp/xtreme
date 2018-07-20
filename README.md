# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
ruby 2.5.0p0 (2017-12-25 revision 61468) [x86_64-linux]

* System dependencies

* Configuration

* Database creation
MySQL -> config/environment/development.log (位置を見直す)

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

⭐️仮想環境を作る手順

1. 以下のurlからVirtualBoxをインストール
https://www.virtualbox.org/wiki/Download_Old_Builds_5_1
注意) 最新版はver5.2だけど、ver5.2は、まだrails使えないのでver5.1をインストール

2. VirtualBox内にcentOSインストール
ターミナルで、

``
    vagrant box add centos/7
``

を打つ。
途中で、選択が来るから`Virtualbox`を選択。`Successfuly`みたいなのが出たら、OK

3. `mkdir vagrant`でvagrantディレクトリを作成。

4. `cd vagrant`でvagrantディレクトリ内に入り、`vagrant init centos/7`を実行(macOS上)。

5. 4.が終了したらvagrantディレクトリ内に`ls`で、Vagrantfileができているか確認。

6. `vagrant up`を実行。終了したら、`vagrant ssh`を実行し、vagrant内に入る。
   このとき、`[vagrant@localhost@ ~]`になっていればOK

7. `cd /vagrant`を実行し、`pwd`コマンドでちゃんと`/vagrant`になっていることを確認。
注) 必ず、異動先のコマンドで必ず`/vagrant`にしてください！

8. Vagrantfileが存在するホストディレクトリ上(macOS側)と
   ゲストディレクトリ上(centOS側)の`/vagrant`が共有してます。

   確認) 確認として、ターミナルを二つ開き、vagrantとmacとで分けてmacOS側で`touch test`でtestファイルを作ってみる。
      vagrant上で`ls`で`test`ファイルが存在すればOK
      できてなかったら、ゴウキにSlack投げて！

ここからは全てvagrantに入ってからの話。
9. Gitインストール

  ``
  yum -y install git
  ``
  でGitをインストール
   確認として
   ``
   git --version
   ``
   を実行！　
   もし入らなかったら、ググって解決してください！

10. rbenvの導入

  ``
  git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
  ``

  ``
  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
  ``
  ``
  echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
  ``

  を順に実行。
  ``
  rbenv --version
  ``

  で入っているかを確認。

11. ruby-buildの導入

  ``
  git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
  ``

12. rubyの導入

  ``
  sudo yum -y install openssl-devel gcc readline-devel libffi-devel mysql-devel gcc-c++
  ``

  を実行。

  ``
  rbenv install 2.5.0
  ``を実行し、
  ``
  rbenv global 2.5.0
  ``
  でglobalに設定。
  ``
  ruby -v
  ``
  でver2.5.0が入っているかを確認。

13. railsの導入

  ``
  gem install multi_json -v '1.10.1'
  ``

  ``
  rbenv exec gem install bundler
  ``

  ``
  rbenv rehash
  ``

  ``
  gem install rails
  ``
  終了。

  あとは、
  ``git config``
  コマンドで、usernameとuser.emailを登録してくれれば、使えるようになるはず。

  つまずいたら、Slack投げて！


内容!

xtreme.co.jp/users/#{user.name}/パラメータでgroupやcoporationとかtask``を渡す！
