### sortのマルチコア対応状況について調べてみた
itosue

---

メニーコア化が進んでいる中、UNIXのコマンドはどうなってるのか調べてみました。
中でもシェル芸や実務で使用頻度が高いと思われるsortについて取り上げてみようと思います。

---

sortコマンドの実行速度が違う　要素→（parallel・Mac内蔵vsGNU・システムのスケジューリング）


−−−
コマンド|そのまま実行|parallelオプションあり
----------|---------|-----------
sort@mac||
gsort@mac||
sort@centOS7||

+++
### 実行環境について
sort@mac 5.93(2005)
gsort@mac 8.27(2017) via homebrew coreutils 
sort@centOS7 8.22(2013)
