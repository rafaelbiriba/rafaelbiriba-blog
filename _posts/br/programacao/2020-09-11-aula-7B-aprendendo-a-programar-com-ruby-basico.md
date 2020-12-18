---
layout: post
title: 'Aula 7B - Aprendendo a programar com Ruby: O Básico para iniciantes'
excerpt: Essa é a quarta parte da aula de ruby básico 4, onde eu faço a correção comentada dos exercícios. Este é o material da aula 7B do curso aprendendo a programar com ruby, o básico para iniciantes. Nunca é tarde para começar a programar! Eu criei um curso gratuito, fácil e didático voltado para iniciantes. Confira mais informações aqui nessa publicação.
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
date: 2020-09-11 11:57 +0200
last_modified_at: 2020-12-21
---
![](/blog/images/curso_ruby_basico/banner-curso-ruby-7B.jpg)

> :warning: Material da aula 7.B! Veja mais informações sobre o curso e a lista completa das aulas em: [http://cursoprogramacao.rafaelbiriba.com/](http://cursoprogramacao.rafaelbiriba.com/) :warning:

# 7.B. Ruby Basics 4 - Correção dos exercícios

Essa é a quarta parte da aula de ruby básico 4, onde eu faço a correção comentada dos exercícios.

Não deixe de tentar resolver os exercícios da aula e investir algum tempo estudando mais sobre o assunto.

### Vídeo da aula

- [https://www.youtube.com/watch?v=jpwRIFbwV60](https://www.youtube.com/watch?v=jpwRIFbwV60)

### Exercícios

- [https://rafaelbiriba.com/blog/br/programacao/aula-7A-aprendendo-a-programar-com-ruby-basico/](/blog/br/programacao/aula-7A-aprendendo-a-programar-com-ruby-basico/)

##### Correção dos exercícios

#### 1.

```ruby
# peso = 100
# peso = 30
peso = 50

if peso >= 70
  puts "Está acima do peso."
elsif peso > 40 and peso < 70
  puts "Está no peso ideal"
elsif peso <= 40
  puts "Está abaixo do peso"
end
```

---

#### 2.

```ruby
valor = 10
if valor > 10
  taxa = 5
else
  taxa = 2
end
puts taxa


valor = 10
taxa = valor > 10 ? 5 : 2
puts taxa

puts valor > 10 ? 5 : 2
```

---

#### 3.

```ruby
# exemplo = {
#   valor: 9,
#   taxa: 5
# }
# exemplo = {
#   valor: 15,
#   taxa: 15
# }
exemplo = {
  valor: 14,
  taxa: 25
}

if exemplo[:valor] > 15 or exemplo[:taxa] > 15
  puts "Muito alto"
elsif (exemplo[:valor] + exemplo[:taxa]) >= 30
  puts "Soma muito alta"
end
```

---

#### 4.

```ruby
# nome = "mario"
# peso = 200.2
# altura = 1.75

# nome = "roberta"
# peso = 65.6
# altura = 1.65

# nome = "pedro"
# peso = 79.7
# altura = 1.77

nome = "ana"
peso = 35.3
altura = 1.60

imc = peso / (altura * altura)
if imc > 30
  resultado = "Obeso"
elsif imc > 25
  resultado = "Acima do peso"
elsif imc > 18.5 and imc < 24.99
  resultado = "Normal"
elsif imc < 18.5
  resultado = "Abaixo"
else
  resultado = "Algo está errado"
end

puts "#{nome} está: #{resultado}"
```

---
