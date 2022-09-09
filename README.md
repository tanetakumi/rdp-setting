# rdp-setting
windows remote desktop settings

##Purpose
- Accelerated response time
- Using a JIS keyboard
- Setup in a Japanese environment easily

## ホスト側の設定
グループポリシーの設定より

ローカルコンピューターポリシー / コンピューターの構成 / 管理用テンプレート / Windowsコンポーネント / リモートデスクトップサービス / リモートデスクトップセッションホスト

- セキュリティ
  - 接続するたびにパスワードを要求する
  ```無効```

- リモートセッション環境
  - 色の解像度を制限する

    ```有効　16ビット```
  - リモートデスクトップ壁紙を強制的に削除する
    
    ```有効```
  - RemoteApp に高度なRemoteFX グラフィックスを使用する
    
    ```有効```

  - リモートデスクトップ接続で H.264/AVC 444 グラフィックスを優先する
    
    ```有効```
  - RemoteFX データの圧縮を構成する
    
    ```有効　RDP圧縮アルゴリズム:ネットワーク帯域幅を節約するよう最適化```

  - RemoteFX アダプティブ グラフィックスの画質を構成する

    ```有効　画質:低```

  - RemoteFX アダプティブ グラフィックスを構成する

    ```有効　RDPエクスペリエンス:最小の帯域幅を使用するよう最適化```

- 接続
  - RDPトランスポートプロトコルの選択

    ```有効　トランスポートの種類の選択:TCPのみを使用```
    
    
![image](https://user-images.githubusercontent.com/75787495/142797239-19cf9a4c-2c28-4d59-98cc-136795d3ab27.png)
    
## クライアント側の設定

![image](https://user-images.githubusercontent.com/75787495/142797532-3af24226-7332-45c3-a307-cd54d6a8378a.png)




