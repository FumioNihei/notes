# 雑記

## ~で開く
- `Winキー＋R`を押し、`regedit`を入力し、Enterでレジストリエディタを起動
- `HKEY_CLASSES_ROOT\*\shell\Open with VSCode\command`キーを作成
- Open with VSCodeの文字はメニューに表示したい文字を入力してください
- commandキーの値に`C:\Program Files\Microsoft VS Code\Code.exe "%1"`
- インストール先ディレクトリが別の方はVisual Studio Codeの実行ファイルのパスにしてください
- see -> http://chun37.hatenablog.com/entry/2018/03/20/110819

## wpf, binding
```
<Label Content="{Binding ElementName=TB1, Path=Text.Length}" ContentStringFormat="{}文字数: {0}""/>
```
テキストボックスの記入量をバインドした

```
<TextBlock Text="{Binding ElementName=TB_simple_1, Path=Text, StringFormat={}①{0}}" TextWrapping="Wrap"/>
```
別のテキストボックスに記述されたテキストが表示される

## cmd, mklink

ディレクトリを相対パスしたいとき；
```
mklink csv /d "..\..\V-NV-Features"
```
- csvがつくるやつ
- "..\..\V-NV-Features"がもとからあるやつ


## ELAN, metadata
メタデータの追加
- とりあえず動画をリンクさせる
- 編集→リンクファイル→リンクされている二次的ファイル（メタデータタブからも飛べる）
- 追加ボタン，tsv or csvファイルを選択
	- このときのファイルは，1列が時間（s.ms），2列目が時系列データのものを作っておく．
- 適用ボタン，注釈層の上にグラフが出てくる．見えない場合は，ドラッグすると表示される．


## powershell, 文字化け
ファイルをUTF-8withBOMで保存するorShift-JISで保存．

powershell coreになったらいらないんだろうなあ...

## visualstudio, ビルド時，出力先を複数指定する
```
xcopy $(ProjectDir)bin\$(ConfigurationName) $(SolutionDir)meetingEvaluation\bin /D/E/C/I/H/Y
```
二個目が出力先なので，適宜変えること．


## マイク
https://www.youtube.com/watch?v=YZvjzcd4CTI

