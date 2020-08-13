---
layout: post
title: "Aula 6A - Aprendendo a programar com Ruby: O Básico para iniciantes"
excerpt: "Material da aula 6A do curso aprendendo a programar com ruby, o básico para iniciantes. Nunca é tarde para começar a programar! Eu criei um curso gratuito, fácil e didático voltado para iniciantes. Confira mais informações aqui nessa publicação."
category: [br, programacao]
lang: br
tags: [programação, tecnologia, curso, ruby, iniciantes]
comments: true
share: true
ads: true
---

![](/blog/images/curso_ruby_basico/banner-curso-ruby-6A.jpg)

> :warning: Material da aula XX! Veja mais informações sobre o curso e a lista completa das aulas em: [http://cursoprogramacao.rafaelbiriba.com/](http://cursoprogramacao.rafaelbiriba.com/) :warning:

# 6.A. Ruby Basics 3 - Hash

Essa é a terceira aula com o conteúdo básico do Ruby. Explico brevemente sobre hash.
Não deixe de tentar resolver os exercícios da aula e investir algum tempo estudando mais sobre o assunto.

### Vídeo da aula

- []()

### Conteúdo da aula

- Hash

##### Exemplos da aula

```ruby
exemplo = {}

exemplo = {nome: "Rafael", idade: 30}
puts "Meu nome é #{exemplo[:nome]} e tenho #{exemplo[:idade]} anos"
```

```ruby
exemplo = {nome: "Rafael", preferencias: ["Vermelho", "Preto"]}
puts exemplo[:nome]
puts exemplo[:preferencias] # Array ["Vermelho", "Preto"]
puts exemplo[:preferencias][1]
```

```ruby
exemplo = [{ nome: "Rafael", idade: 30}, {nome: "Roberto", idade: 40}]

puts exemplo[0][:nome]
puts exemplo[0][:idade]
puts exemplo[1][:nome]
puts exemplo[1][:idade]
```

### Links úteis

- [https://ruby-doc.org/core-2.7.0/Hash.html](https://ruby-doc.org/core-2.7.0/Hash.html)

### Exercícios

#### 1.
Criar uma hash simples contendo 3 chaves principais (a, b, c).
`a` deve conter um texto. `b` deve conter um número. `c` deve um float.
Imprimir o valor das chaves a,b,c separadamente em cada linha.

---

#### 2.
Considerando o hash abaixo:

```ruby
exemplo = {
  a: "cinquenta",
  b: "dez",
  c: [0,1,2,3,4,5,6,7,8,9]
}
```
Utilizando o hash acima, imprima na tela o texto `cinquenta - 50` e em outra linha `dez - 10`.

NOTA: Você deve utilizar os numeros do array de 0 a 9 para formar o `50` e o `10`.

---

#### 3.
Criar e imprimir uma lista de compras com produtos de mercado, para duas pessoas diferentes, utilizando um único hash para armazenar os dados.
Imprimir a lista de cada pessoa. Exemplo `Rafael vai comprar: ["produto1", "produto2"]` `Roberto vai comprar: ["produto3", "produto4"]`

---

#### 4. [DESAFIO]
Considerando o hash abaixo:

```ruby
exemplo = {
  fora1: {
    dentro1: "1"
  }
}
```
Adicionar ao hash `exemplo` uma nova chave `fora2` que contenha a chave `dentro2` com valor `2`.

Imprima o hash `exemplo` no final:
`{:fora1=>{:dentro1=>"1"}, :fora2=>{:dentro2=>"2"}}`

---
