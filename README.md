# 提出Quest「Conduit」

ブログプラットフォームを作る [RealWorld](https://github.com/gothinkster/realworld/tree/main) という OSS のプロジェクトがあります。RealWorld は実世界と同じ機能を持つプラットフォームを作ることで、学習したいフレームワークの技術を習得することを目的としてたプロジェクトです。

[Conduit](https://demo.realworld.io/#/) は RealWolrd で作成する Medium.com のクローンサイトです。

今回は Counduit と同じ見た目・機能のサイトを Rails で実装します。

## ステップ1

[RealWorld のドキュメント](https://realworld-docs.netlify.app/docs/specs/frontend-specs/templates) を参考に、次のページの HTML と CSS を実装し、ページを作成してください。この時点では機能は作成せず、見た目を整えるだけでよいです。

- [Home](https://realworld-docs.netlify.app/docs/specs/frontend-specs/templates#home)
- [Create/Edit Article](https://realworld-docs.netlify.app/docs/specs/frontend-specs/templates#createedit-article)
- [Article](https://realworld-docs.netlify.app/docs/specs/frontend-specs/templates#article)

なお、Article に関わる要素のうち、認証機能及び著者、お気に入り(`favorite`) は実装しなくてよいものとします。

## ステップ2

ステップ1のページの機能を実装し、動作するようにしてください。

## ステップ3 (advanced)

テストコードを1つでよいので書いてください。

## ステップ４ (advanced)

次のページの HTML と CSS を実装し、ページを作成してください。この時点では機能は作成せず、見た目を整えるだけでよいです。

- [Authentication](https://realworld-docs.netlify.app/docs/specs/frontend-specs/templates#authentication)

## ステップ５ (advanced)

ステップ3のページの機能を実装し、動作するようにしてください。

Article に関わる要素のうち、認証機能及び著者を実装することを想定しています。

## 使い方

このアプリケーションを動かす場合は、まずはリポジトリを手元にクローンしてください。
その後、次のコマンドで必要になる RubyGems をインストールします。

```
$ gem install bundler -v 2.4.12
$ bundle _2.4.12_ install
```

その後、データベースへのマイグレーションを実行します。

```
$ rails db:migrate
$ rails db:seed
```

最後に、テストを実行してうまく動いているかどうか確認してください。

```
$ rails test
```

テストが無事にパスしたら、Railsサーバーを立ち上げる準備が整っているはずです。

```
$ rails server
```
