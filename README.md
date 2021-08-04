# MARVEL MCU APP

<p align="center"><img src="https://caruzojr.com.br/projects/marvel_mcu_app/marvel_mcu_mockup.png" data-canonical-src="https://caruzojr.com.br/projects/marvel_mcu_app/marvel_mcu_mockup.png" width="500" /></p>

## COMO RODAR O PROJETO
Depois de realizar um GET no repositório, abra o terminal e na pasta do projeto, rode os seguintes comandos para realizar o build inicial.  

ATENÇÃO: Execute na pasta do projeto, um comando por vez, e na sequencia que está abaixo.

```
flutter create .
flutter pug upgrade
```

## LIBERANDO ACESSO A LINK EXTERNOS
Nos emuladores Android, por medida de segurança, existe um bloqueio para acessar links externos como por exemplo uma chamada API.  
Para resolver isso, devemos editar o arquivo `AndroidManifest.xml` que está dentro da pasta `android/app/main/`.

Coloquei o código antes da linha `android:label="marvel_mcu_app`

```
android:usesCleartextTraffic="true"
```

```
<queries>
    <intent>
    <action android:name="android.intent.action.VIEW" />
    <data android:scheme="https" />
    </intent>
</queries>
```

Deve ficar assim o código:
```xml
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.example.works_marvelmcu_mobile_app">
   <application
        android:usesCleartextTraffic="true"
        android:label="works_marvelmcu_mobile_app"
        android:icon="@mipmap/ic_launcher">
        <activity
            android:name=".MainActivity"
            android:launchMode="singleTop"
            android:theme="@style/LaunchTheme"
            android:configChanges="orientation|keyboardHidden|keyboard|screenSize|smallestScreenSize|locale|layoutDirection|fontScale|screenLayout|density|uiMode"
            android:hardwareAccelerated="true"
            android:windowSoftInputMode="adjustResize">
            <!-- Specifies an Android theme to apply to this Activity as soon as
                 the Android process has started. This theme is visible to the user
                 while the Flutter UI initializes. After that, this theme continues
                 to determine the Window background behind the Flutter UI. -->
            <meta-data
              android:name="io.flutter.embedding.android.NormalTheme"
              android:resource="@style/NormalTheme"
              />
            <!-- Displays an Android View that continues showing the launch screen
                 Drawable until Flutter paints its first frame, then this splash
                 screen fades out. A splash screen is useful to avoid any visual
                 gap between the end of Android's launch screen and the painting of
                 Flutter's first frame. -->
            <meta-data
              android:name="io.flutter.embedding.android.SplashScreenDrawable"
              android:resource="@drawable/launch_background"
              />
            <intent-filter>
                <action android:name="android.intent.action.MAIN"/>
                <category android:name="android.intent.category.LAUNCHER"/>
            </intent-filter>
        </activity>
        <!-- Don't delete the meta-data below.
             This is used by the Flutter tool to generate GeneratedPluginRegistrant.java -->
        <meta-data
            android:name="flutterEmbedding"
            android:value="2" />
    </application>
    <queries>
      <intent>
        <action android:name="android.intent.action.VIEW" />
        <data android:scheme="https" />
      </intent>
    </queries>
</manifest>
```

## RODANDO A API LOCALMENTE
Uma API local deve ser inicializada para puxar a lista inicial dos filmes.  
Iremos utilizar o Json-Server para emular está api.

Dentro da pasta do projeto temos uma outra pasta chamada `API`, rode o comando abaixo dentro desta pasta:

```
json-server --watch db.json
```

## INICILIZANDO
Pronto! Agora o projeto está pronto para rodar no emulador.
