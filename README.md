# LGTM ハッカソン ソースコード（2018/12/28）
## メンバー
- 中本 光彦
- 西本 洋紀
- 江口 大志

## 環境
- Ruby 2.5.0
- Ruby on Rails 5.2.1
- React.js

## ローカル開発構築
クローン
```
$ git clone git@github.com:shierote/team3-app.git
$ cd team3-app
```

dockerをインストール後、
```
$ docker-compose build
$ docker-compose up
```
[http://localhost:3000/](http://localhost:3000/)にアクセスしてページが表示されればOK

## Git基礎&規則
基本的には以下の四コマンドを用いれば良い

#### Add
- 本番に上げたい変更内容を選択するためのコマンド
- 環境変数にするべき変数（何らかのパスワードなど）やデバッグ用コードなどを含むコードはAddしない（環境変数化あるいは消すなどしてAddする）

```
$ git add （GitHubに上げたい変更内容を含んだファイル）
```

#### Commit
- 複数のAddをまとめるためのコマンド
- メッセージで何をしたのかわかるようにする
- Check Out（以下で説明）する前にCommitすると厄介なことになるので注意
```
$ git commit -m "（その変更で何をしたのかを記述）"
```

### Push
- Commitの内容をリモートリポジトリ（GitHubのリポジトリ）に反映する
- 自分の今のブランチがちゃんと自分で作成したものか確認する必要がある（masterにPushするとconflictが起きる可能性あり）
```
$ git push origin (ブランチ名)
```

### Check Out
- ブランチを作成して移動したり、既存のブランチに戻したりする役割
- Commitする前にこのコマンドにより自分のブランチに移動する必要がある
```
$ git checkout -b 作成したいブランチ名
$ git checkout 移動したいブランチ名
```
