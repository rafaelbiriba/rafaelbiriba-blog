---
layout: post
title: "Aula 4A - Aprendendo a programar com Ruby: O Básico para iniciantes"
excerpt: "Material da aula 4A do curso aprendendo a programar com ruby, o básico para iniciantes. Nunca é tarde para começar a programar! Eu criei um curso gratuito, fácil e didático voltado para iniciantes. Confira mais informações aqui nessa publicação."
category: [br, programacao]
lang: br
tags: [programação, tecnologia, curso, ruby, iniciantes]
comments: true
share: true
ads: true
---

![](/blog/images/2020/curso-basico-ruby-banner.jpg)

> :warning: Material da aula 4! Veja mais informações sobre o curso e a lista completa das aulas em: [http://cursoprogramacao.rafaelbiriba.com/](http://cursoprogramacao.rafaelbiriba.com/) :warning:

# 4.A. Ruby Basics 1

Essa é a primeira aula com o conteúdo básico do Ruby. Explico brevemente sobre String, Integer and Float, além de operações matemáticas e variáveis.
Não deixe de tentar resolver os exercícios da aula e investir algum tempo estudando mais sobre o assunto.

### Vídeo da aula

- `Youtube link`

### Conteúdo da aula

- puts

- String

- Integer and Float

- Math operations

- Variables

##### Exemplos

```ruby
  a = "Bem"
  b = " vindo!"
  c = " :)"

  puts "#{a}#{b}#{c}"
```

```ruby
puts "rafael"
puts
puts 1
```

```ruby
qualquer = 1
puts qualquer
```

```ruby
fruta = "Morango"
puts "Eu gosto de #{fruta}"
```

```ruby
taxa = 3
preco = 30
valor = preco + taxa
puts "O produto custa R$#{valor}"
puts "O produto custa R$#{preco + taxa}"
```

```ruby
puts "oi"
puts 10000
puts 10.00
100/10
55/2
55.00/2

exemplo = "testando"
puts "Estou #{exemplo}!"

a = 15.0
b = 2

puts a*b
puts a/b
puts (a*b)/b
```

### Links úteis

- [https://ruby-doc.org/core-2.7.0/String.html](https://ruby-doc.org/core-2.7.0/String.html)

- [https://ruby-doc.org/core-2.7.0/Integer.html](https://ruby-doc.org/core-2.7.0/Integer.html)

- [https://ruby-doc.org/core-2.7.1/Float.html](https://ruby-doc.org/core-2.7.1/Float.html)

- [https://ruby-doc.org/core-2.7.0/doc/syntax/literals_rdoc.html](https://ruby-doc.org/core-2.7.0/doc/syntax/literals_rdoc.html)

### Exercícios

#### 1.
Criar uma variável com seu nome, uma variável com sua idade. Imprimir o resultado em uma frase: `Meu nome é Rafael e tenho 30 anos.` utilizando as variaveis que você criou.

---

#### 2.
Utilizando o código com variáveis abaixo:

```
dolar = 5.00
euro = 6.00

cadeira = 10.00
mesa = 20.00
```

Considerando que as variáveis cadeira e mesa estão em real, e as variáveis dolar e euro representam o custo de 1 dolar/euro em real, seu código deve retornar quanto custa a mesa e quanto custa a cadeira em dólar e em euro.

NOTA: Você NÃO pode digitar nenhum número enquanto resolver esse exercício. Utilize as operações matemáticas e variáveis.

---

#### 3. [DESAFIO]
Considerando as variáveis abaixo:

```
a = 2
b = 5
```

Escreva um programa que imprima o número 4.

NOTA: Você NÃO pode criar novas variáveis!
Você NÃO pode digitar nenhum número enquanto resolver o exercício.
Você SÓ pode usar no máximo uma vez cada operação matemática: `*, /, +, -` ou seja, não pode somar duas vezes ou diminuir duas vezes. No máximo uma operação de cada.
