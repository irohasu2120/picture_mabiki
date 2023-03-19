## 不要なRaw削除ツール

ピンぼけなど不要な画像を削除後にRAW画像も同期で削除するツール。削除したRAWはゴミ箱じゃなく、完全削除なので注意。

基本的に以下の構成で動く。

```shell
JPG画像フォルダ
C:\Users\{UserName}\Downloads\{JPG画像フォルダー}

RAW画像フォルダ
C:\Users\{UserName}\Downloads\{JPG画像フォルダー}\新しいフォルダー
```

ツール実行には以下のコマンドを実行する。
```shell
.\picture_mabiki.ps1 C:\Users\{UserName}\Downloads\{JPG画像フォルダー}
```
