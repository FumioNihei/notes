gitクライアントの使い方の説明．Githubの説明ではない．

むしろ誰か教えてくれよ．

# 簡単な用語集
- repository（リポジトリ，名詞）：ディレクトリみたいなもの．プロジェクトとかと言い換えてもよさそう．
   - Githubはremote repositoryと呼ばれる．cloneした後の自分の手元にあるのがlocal repository．
- branch（ブランチ，名詞）：派生したrepository．
   - master branchがメインストリーム．develop branchとかもある．
   - 一人で作業する分にはあまり意識することはないかも．
   - 複数人で同時に編集する場合は，個人ごとにbranchを作成して（俗称：branchを切る）使うべき．
   - 個人の裁量でmaster branchにpushすることはかなり危険．偉い人に許可を．
- clone（クローン，動詞）：repositoryをダウンロードするときにはcloneという単語を特別使う．
- commit（コミット，動詞）：branchに変更を与えること．単純に貢献することを意味する場合も．
- push（プッシュ，動詞）：repositoryをアップロードすること．

# 研究室アカウント以下のrepositoryをダウンロードしたい
[[https://github.com/IUI-Lab]]直下のrepositoryを自分のデスクトップにcloneしたいとき．

所望のrepositoryにアクセスし，`Clone or download`（緑色のボタン）を押し，表示された文字列をコピー．以下のようにコマンドを叩く．以下の例は`AITalk` repositoryをcloneする．
```
git clone https://github.com/IUI-Lab/AITalk.git
```

この場合，**master branchがcloneされる**．特定のbranchをcloneする場合はcloneに引数を追加する．詳細はGoogleに聞くこと．

# repositoryに変更を与えたい
repositoryにcommitし，Githubにpushしたいとき．

cloneしたrepositoryのディレクトリ上で以下のコマンドを叩く．
```
git add *
git commit -m "変更点について簡潔にコメント"
git push
```
この場合，**cloneしたブランチに変更が反映される**（本当かどうかはGoogle）ので，注意すること．master branchには間違っても独断でpushしないように．

以下説明．
- add: 変更点をコミットにまとめる？stagingというらしい．なんかわからんが必要．
- commit: コミットを作成する．
- push: コミットをremote repositoryにpush，すなわち変更を登録する．

## pushする前にcommitを修正したいとき
要らないファイルをstagingしてしまった！pushする前にstaging領域から除外したい！そんなとき．

```
git add *
git commit -m "いろいろ追加"
（まずい！いらないファイルをstagingしてしまった！消さねば！！！）
git add *
git --amend commit -m "いろいろ追加" （<- コメントは変えてもよい）
git push
```

# その他
- local repositoryを作ったあとに，そのrepositoryを基準としてGithub上のrepositoryを作成したい
   - 知るか．先にGithub上でrepository作っとけ．
   - Github上で空のrepository作ってそれcloneして，生成される`.git`ディレクトリをlocal repository内にコピーすればうまくいく．