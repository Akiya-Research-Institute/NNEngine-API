# インストール

1. [UE Marketplace](https://www.unrealengine.com/marketplace/product/74892c770dc149b1b5c4e872804e6ade)で購入し、Epic Games Launcherからインストールします。  
2. Unreal Engineのプロジェクトを作成します。
3. プロジェクトを開き、エディタのメニュー上で「編集 > プラグイン」を開き、「NNEngine」を有効にし、プロジェクトを再起動します。

!!! Warning "Linuxでのインストール"
    LinuxではEpic Games Launcherが提供されていないため、Windowsから手動でコピーする必要があります。
    
    1. Windowsで、Epic Games Launcherからプラグインをインストールします。
    2. Linuxで、プロジェクトを作成します。
    3. WindowsのUE4プラグインフォルダから、Linuxのプロジェクトディレクトリにプラグインをコピーします。
        - コピー元：<*WindowsのUE4インストールフォルダ*>\Engine\Plugins\Marketplace\NNEngine
        - コピー先：<*Linuxで作成した.uporjectのあるディレクトリ*>/Plugins/NNEngine
