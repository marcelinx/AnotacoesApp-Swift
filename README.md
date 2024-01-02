# Notas Simples

Este aplicativo iOS é uma aplicação simples que permite aos usuários fazer anotações e salvar essas notas localmente no dispositivo usando o UserDefaults.

## Visão Geral

O aplicativo possui uma única tela onde os usuários podem inserir texto em um campo de texto e salvar essa anotação. As anotações são armazenadas localmente no dispositivo usando a classe UserDefaults.

## Funcionalidades

- **Salvar Anotação:**
  - Os usuários podem digitar suas anotações no campo de texto fornecido.
  - Ao pressionar o botão "Salvar", a anotação é salva usando UserDefaults.

- **Recuperar Anotação:**
  - Ao abrir o aplicativo, a última anotação salva é recuperada do UserDefaults e exibida no campo de texto.

- **Outras Funcionalidades:**
  - Toques fora do campo de texto encerram o modo de edição.
  - A barra de status é ocultada para uma experiência de tela mais limpa.

## Estrutura do Código

O código é estruturado em uma classe ViewController que controla a interface e a lógica por trás das anotações.

- `salvarAnotacao`: Método acionado quando o botão "Salvar" é pressionado. Salva a anotação no UserDefaults.
- `recuperarAnotacao`: Método para recuperar a anotação salva no UserDefaults.
- Outros métodos são utilizados para configuração da interface e tratamento de eventos.

## Pré-Requisitos

- Xcode 12 ou superior.
- Conhecimento básico de desenvolvimento iOS usando Swift.

## Como Usar

1. Abra o projeto no Xcode.
2. Compile e execute o aplicativo em um simulador ou dispositivo iOS.
3. Digite uma anotação no campo de texto.
4. Pressione o botão "Salvar" para salvar a anotação.
5. Feche e reabra o aplicativo para verificar se a anotação foi mantida.

## Avisos

Este aplicativo é um exemplo simples e não aborda questões avançadas de segurança ou armazenamento de dados sensíveis. O UserDefaults é adequado para pequenas quantidades de dados não-críticos.
