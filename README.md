# MARVEL MCU APP

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

Deve ficar assim o código:
```xml
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.example.marvel_mcu_app">
   <application
        android:usesCleartextTraffic="true"
        android:label="marvel_mcu_app"
        android:icon="@mipmap/ic_launcher">
...
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
