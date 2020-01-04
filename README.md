# Gympoint - Desafio final do Bootcamp Gostack da Rocketseat

Neste repositório se encontram os arquivos do desafio final separados entre o Back-end, Web e Mobile.

## Instruções de inicialização

Para instalar o este projeto, é necessário que se tenha instalado no computador o [GIT](https://git-scm.com/downloads), [Node.js com NPM](https://nodejs.org/en/), ou caso preferir o [Yarn](https://yarnpkg.com/lang/en/).
Primeiro clone este repositório em um diretório de sua escolha com o comando:

- `git clone git@github.com:Bryant-Anjos/gympoint.git`

### Linux e MAC

Após clonado o repositório, no Linux ou no MAC digite os seguintes comandos:

- `cd gympoint`
- `yarn configure` ou `npm run configure`

### Windows

No windows é necessário entrar em cada uma das das pastas do repositório clonado e em cada uma delas executar `yarn install` ou `npm install`.

Após feito isso na pasta `gostack-gympoint-backend` copie o arquivo `.env.example` e o renomeie para `.env`.

## Configurando o projeto

Após iniciado, será necessário configurar os bancos de dados, o servidor de e-mail e o sentry.
Os bancos necessários para o projeto é o `Postgres SQL` e o `Redis Alpine`.
Preencha todos os dados necessários no arquivo `.env` no diretório `gostack-gympoint-backend`.

Para executar a aplicação Mobile é necessário ter o ambiente preparado para executar o [React Native](https://facebook.github.io/react-native/docs/getting-started), seja em uma emulador ou em um smartphone.

As aplicações Web e Mobile possuem os arquivos de configuração de endereço do backend e do Reactotron. Caso seja necessário os endereços de IP devem ser trocados de acordo com a sua rede. O padrão utilizado neste projeto é o `localhost`.

## Executando o projeto

Após concluir as etapas de inicialização e de configuração execute os seguintes comandos para executar as aplicações desejadas.

# Back-end

Lembre-se de estar com os bancos de dados executando e o arquivo `.env` configurado corretamente.

- `yarn dev` ou `npm run dev`
- `yarn queue` ou `npm run queue`

# Web

Lembre-se de estar com o back-end executando corretamente para que a aplicação web possa buscar os dados necessários.

- `yarn start` ou `npm run start`

# Mobile

Lembre-se de estar com o back-end executando corretamente para que o aplicativo possa buscar os dados necessários.

Em um terminal execute o comando abaixo para deixar o `Metro Bundler` executando:
- `yarn start` ou `npm run start`

E no outro terminal execute o comando abaixo para compilar a aplicação:
- `yarn react-native run-android` ou `npx react-native run-android`

## Plataforma do aplicativo

O aplicativo foi desenvolvido e testado somente para o Android.