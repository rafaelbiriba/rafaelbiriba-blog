---
layout: post
title: 'Aula 6B - Aprendendo a programar com Ruby: O Básico para iniciantes'
excerpt: Essa é a terceira parte da aula de ruby básico 3, onde eu faço a correção comentada dos exercícios. Este é o material da aula 6B do curso aprendendo a programar com ruby, o básico para iniciantes. Nunca é tarde para começar a programar! Eu criei um curso gratuito, fácil e didático voltado para iniciantes. Confira mais informações aqui nessa publicação.
category:
- br
- programacao
lang: br
tags:
- programação
- tecnologia
- curso
- ruby
- iniciantes
comments: true
share: true
ads: true
date: 2020-09-05 09:35 +0200
last_modified_at: 2020-12-21
---
![](/blog/images/curso_ruby_basico/banner-curso-ruby-6B.jpg)

> :warning: Material da aula 6.B! Veja mais informações sobre o curso e a lista completa das aulas em: [http://cursoprogramacao.rafaelbiriba.com/](http://cursoprogramacao.rafaelbiriba.com/) :warning:

# 6.B. Ruby Basics 3 - Correção dos exercícios

Essa é a terceira parte da aula de ruby básico 3, onde eu faço a correção comentada dos exercícios.

Não deixe de tentar resolver os exercícios da aula e investir algum tempo estudando mais sobre o assunto.

### Vídeo da aula

- [https://www.youtube.com/watch?v=eT7nPsffJhE](https://www.youtube.com/watch?v=eT7nPsffJhE)

### Exercícios

- [https://rafaelbiriba.com/blog/br/programacao/aula-6A-aprendendo-a-programar-com-ruby-basico/](/blog/br/programacao/aula-6A-aprendendo-a-programar-com-ruby-basico/)


##### Correção dos exercícios

#### 1.

```ruby
  lista = { frutas: [], verduras: [] }
  lista[:frutas] << "banana"
  lista[:verduras] << "cenoura"
  lista[:frutas] << "uva"
  lista[:verduras] << "brocolis"
  puts lista
  # {:frutas=>["banana", "uva"], :verduras=>["cenoura", "brocolis"]}
```

#### 2.

```ruby
resultado = {
  a: "banana",
  b: 10,
  c: 50.0
}

puts resultado[:a]
puts resultado[:b]
puts resultado[:c]
```

---

#### 3.

```ruby
exemplo = {
  a: "cinquenta",
  b: "dez",
  c: [0,1,2,3,4,5,6,7,8,9]
}

puts "#{exemplo[:a]} - #{exemplo[:c][5]}#{exemplo[:c][0]}"
puts "#{exemplo[:b]} - #{exemplo[:c][1]}#{exemplo[:c][0]}"

```

---

#### 4.

```ruby
lista_compras = {
  rafael: ["Banana", "Morango"],
  carlos: ["Laranja", "Abacaxi"]
}

puts "Rafael vai comprar #{lista_compras[:rafael]}"
puts "Carlos vai comprar #{lista_compras[:carlos]}"
```

```ruby
lista_compras = {}
lista_compras[:rafael] = []
lista_compras[:carlos] = []
lista_compras[:rafael] << "Banana"
lista_compras[:rafael] << "Morango"
lista_compras[:carlos] << "Laranja"
lista_compras[:carlos] << "Abacaxi"

puts "Rafael vai comprar #{lista_compras[:rafael]}"
puts "Carlos vai comprar #{lista_compras[:carlos]}"
```

---

#### 5.

```ruby
exemplo = {
  fora1: {
    dentro1: "1"
  }
}

exemplo[:fora2] = {}
exemplo[:fora2][:dentro2] = "2"

puts exemplo
```

```ruby
exemplo = {
  fora1: {
    dentro1: "1"
  }
}

exemplo[:fora2] = { dentro2: "2" }

puts exemplo
```

```ruby
exemplo = {
  fora1: {
    dentro1: "1"
  },
  fora2: {
    dentro2: "2"
  }
}

puts exemplo
```

---
