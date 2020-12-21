---
layout: post
title: 'Ruby Basics 2 - Correção dos exercícios - Aula 5B - Aprendendo a programar com Ruby: O Básico para iniciantes'
excerpt: Nessa aula eu faço a correção comentada dos exercícios da aula de ruby basics 2 - Array(5A). Este é o material da aula 5B do curso aprendendo a programar com ruby, o básico para iniciantes. Nunca é tarde para começar a programar! Eu criei um curso gratuito, fácil e didático voltado para iniciantes. Confira mais informações aqui nessa publicação.
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
date: 2020-08-27 13:44 +0200
last_modified_at: 2020-12-21
---
![](/blog/images/curso_ruby_basico/banner-curso-ruby-5B.jpg)

> :warning: Material da aula 5B! Veja mais informações sobre o curso e a lista completa das aulas em: [http://cursoprogramacao.rafaelbiriba.com/](http://cursoprogramacao.rafaelbiriba.com/) :warning:

# 5.B. Ruby Basics 2 - Correção dos exercícios

Nessa aula eu faço a correção comentada dos exercícios da aula de [ruby basics 2 - Array](https://rafaelbiriba.com/blog/br/programacao/aula-5A-aprendendo-a-programar-com-ruby-basico/).

Não deixe de tentar resolver os exercícios da aula e investir algum tempo estudando mais sobre o assunto.

### Vídeo da aula

- [https://www.youtube.com/watch?v=kGSH0oxHXLs](https://www.youtube.com/watch?v=kGSH0oxHXLs)

### Exercícios

- [https://rafaelbiriba.com/blog/br/programacao/aula-5A-aprendendo-a-programar-com-ruby-basico/](/blog/br/programacao/aula-5A-aprendendo-a-programar-com-ruby-basico/)


##### Correção dos exercícios

#### 1.

```ruby
a = 1
b = "Banana"
c = 10.0

lista = [a,b,c]
puts lista[0]
puts lista[1]
puts lista[2]
```

---

#### 2.

```ruby
a = 5
b = 10
c = 11
d = 15
e = 20

puts "Valores: #{[a, b*d, b*c, e/b, c-b]}"
```

---

#### 3.

```ruby
exemplo = [["a","b"], ["c","d"], ["e", "f"]]

puts "#{exemplo[2][1]}#{exemplo[0][0]}#{exemplo[1][0]}#{exemplo[0][0]}"
# faca
```

---

#### 4.

```ruby
exemplo = [
  [1,2,["a", "b"]], #exemplo[0]
  [3,4,["c", "d"]]  #exemplo[1]
]

exemplo = [
  [
    1, #exemplo[0][0]
    2, #exemplo[0][1]
    ["a", "b"] #exemplo[0][2]
  ], #exemplo[0]
  [
    3, #exemplo[1][0]
    4, #exemplo[1][1]
    ["c", "d"] #exemplo[1][2]
  ]  #exemplo[1]
]

puts "#{exemplo[1][0]}#{exemplo[0][2][0]}#{exemplo[0][1]}#{exemplo[1][2][1]}"
# 3a2d
```

---

#### 5.

```ruby
texto = "banana#morango#abacaxi"

puts "Resultado: #{texto.split("#")}"
```

---

#### 6. [DESAFIO]

```ruby
texto = "banana#morango#abacaxi!limao!mamao"

resultado1 = texto.split("#")
#puts "#{resultado1}"
resultado2 = resultado1[2].split("!")
#puts "#{resultado2}"

resultado_final = [
  resultado1[0],
  resultado1[1],
  resultado2[0],
  resultado2[1],
  resultado2[2]
]
puts "Resultado: #{resultado_final}"

# Resultado: ["banana", "morango", "abacaxi", "limao", "mamao"]
```

---
