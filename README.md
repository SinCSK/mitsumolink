# アプリケーション名:
### MitsumoLink


# アプリケーション概要：
どこでも見積書を作成するためのアプリケーションとなります。
商品とその単価を登録し、見積金額に誤りをなくすことを目的としています。


# 制作背景：
前職で建設業の方と話す機会が多く、その際に材料の金額がよく変動するため、同時期に作成した見積もりであっても作成者ごとに見積金額が異なることが多々あるという話を聞いていました。
そのため、材料と単価を一括で管理できるデータベースを作成し、そこから材料を選択することによって作成者ごとに誤差が出ないようなアプリケーショを作成しようと考えました。


# 実装機能:
## 商品登録機能
<<< GIF >>>
商品のデータベースに商品とその単価を登録する機能となります。
見積に商品と入力する際は、コードを参照するため、わかりやすいコードを入力します。

## 見積作成機能
<<< GIF >>>
見積を新規作成する機能となります。  
後々、編集や削除を行うためにわかりやすい名前を登録します。

<<< GIF >>>
作成後は見積の一覧機能で登録した名前と登録日が表示されます。
  
## 見積商品入力機能
<<< GIF >>>
見積作成機能で作成した見積に商品と数量を入力する画面となります。
商品のコードと数量を入力し、追加ボタンを押下することによって見積に挿入されます。

# 開発環境
### 言語：Haml,SCSS,Ruby,jQuery
### フレームワーク：Ruby on Rails
### DB：mysql

# 今後実装したい機能
### 見積の検索機能
見積が多くなると探しづらくなるため、検索機能を追加したい。

### 見積の並び替え・絞り込み機能
上記と同様の理由で機能を追加したい。

### 商品のカテゴリ分け機能
商品が多くなると商品の管理が難しくなるため、カテゴリわけが行えるようにしたい。

### 見積への商品入力方法の変更
現状、見積商品入力機能はコードの入力でしか商品の追加ができないが、追加バタンを押下することで追加できるようにしたい。
また、見積と商品の一覧が上下に並んでいるが視認性が悪いため左右にしたい。
