# 恋愛マッチングサービス 「LOVERS」

<img width="670" alt="スクリーンショット 2020-01-09 16 16 02" src="https://user-images.githubusercontent.com/56910235/72861648-edb2ab00-3d0d-11ea-9676-e322749300ff.png">


## 📦 Features

### ベースはTechpitの教材を使用
Techpit https://www.techpit.jp/

### Techpitのカリキュラム内で実装した機能一覧
- レスポンシブデザイン対応
- deviseでのユーザー登録、編集、ログイン、ログアウト機能
- カードスワイプでリアクションの送信
- 異性とのマッチング機能
- マッチングユーザーとのメッセージ機能

### 追加で実装した機能一覧
- ユーザープロフィールの項目追加
- ユーザー検索機能（カテゴリ検索）
- ユーザーレビュー（星）機能
- ユーザーへのコメント機能
- ユーザーのもらったいいね数の表示
- 送った「いいね」、もらった「いいね」の表示
- メッセージの表示を視覚的に分かりやすく

### 今後追加した機能一覧
- メッセージの既読機能
- プロフィール画像の複数登録
- マッチング成立時演出を盛大に
- SNS連携

### 修正ポイント
- リアクション送信後、更新するとカードが復活してしまう
- 画像の保存先をS3に変更

## :white_check_mark: Background
スクール出身のプログラミング初学者として学んだことの総復習として何かアウトプットが出来ないかと思い開発に至りました。
マッチングアプリを作ろうと思った背景として、実際のサービスに触れてみると１つ１つの機能がスクールのカリキュラムで実装した機能と通ずる部分ばかりだと思い、復習およびアウトプットにちょうど良いと感じたためです。
もちろんマッチングアプリ自体にも興味を持っている（むしろお世話になっていた）ので、興味のあったアプリの開発は俄然モチベーション高く取り込めました。
その結果、自分が実際に使用していたときに「あったらいいな」と思う機能を中心に追加いたしました。

例えば、ユーザーレビュー機能。
自身のプロフィールや写真の印象を異性のユーザーがレビューすることで周りと比較して自分がどのレベルなのか知ることができます。
実際のマッチングサービスだとライバルとなる同性ユーザーのプロフィールが見れないため客観的に自分がどのレベルなのかが判断できません。
私はこの機能を通してユーザーが自分のレベルを客観的に把握し自分磨きに拍車をかけてくれれば良いなと思います。

Techpitさんの教材をお借りしての実装でしたが、今後もアップデートを積み重ねて今までにない機能を盛り込んだマッチングサービスを目指したいと思います。


## 🌐 App URL

### **https://matching-app-lovers.herokuapp.com/**  

## 💬 Usage
### テストログインアカウント

男性ユーザー
email:`m-test@test.com`
pass:`aaaaaaaa`

女性ユーザー
email:`f-test@test.com`
pass:`aaaaaaaa`
 
