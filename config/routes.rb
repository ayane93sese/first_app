Rails.application.routes.draw do
  # ↑確かこれは元々書いてあったやつ
  get 'posts', to: 'posts#index' 
  # ↑ HTTPメソッド + 'URL' to: 'コントローラー名#アクション'　※コントローラー名は複数形！！
  # 意味合いとしては、このpostsというパスにgetというHTTPメソッドがRQされてきたら、postsってコントローラーのindexっていうアクションを呼び出しますってこと
  get 'posts/new', to: 'posts#new'
  post 'posts', to: 'posts#create'
end

# まずルートを確保！そしてターミナルでrails routes入力するといっぱい文字が出てくるので、それでルート確保できてるか確認する。
# コントローラーはターミナルにrails g controller コントローラー名(複数形！！)のコマンド入力
# そうするとなんかファイルができるから、そのファイルにアクションとか記述していくんだけど、そこに記述するアクションはこっちと対応させてね

