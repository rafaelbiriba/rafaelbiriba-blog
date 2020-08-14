---
layout: post
title: "Aula 9B - Aprendendo a programar com Ruby: O Básico para iniciantes"
excerpt: "Material da aula 9B do curso aprendendo a programar com ruby, o básico para iniciantes. Nunca é tarde para começar a programar! Eu criei um curso gratuito, fácil e didático voltado para iniciantes. Confira mais informações aqui nessa publicação."
category: [br, programacao]
lang: br
tags: [programação, tecnologia, curso, ruby, iniciantes]
comments: true
share: true
ads: true
---

![](/blog/images/curso_ruby_basico/banner-curso-ruby-9B.jpg)

> :warning: Material da aula 9.B! Veja mais informações sobre o curso e a lista completa das aulas em: [http://cursoprogramacao.rafaelbiriba.com/](http://cursoprogramacao.rafaelbiriba.com/) :warning:

# 9.B. Ruby Basics 6 - Correção dos exercícios

Essa é a sexta parte da aula de ruby básico 6, onde eu faço a correção comentada dos exercícios.

### Vídeo da aula

- []()

### Exercícios

- [https://rafaelbiriba.com/blog/br/programacao/aula-9A-aprendendo-a-programar-com-ruby-basico/](/blog/br/programacao/aula-9A-aprendendo-a-programar-com-ruby-basico/)

### Correção dos exercícios

#### 1.

```ruby
21.times do |x|
  puts x unless x % 3 == 0
end

# 1
# 2
# 4
# 5
# 7
# 8
# 10
# 11
# 13
# 14
# 16
# 17
# 19
```

---

#### 2.

```ruby
letras = ["A", "B", "C"]

letras.each do |letra|
  5.times do |numero|
    puts "#{letra}#{numero + 1}"
  end
end

# A1
# A2
# A3
# A4
# A5
# B1
# B2
# B3
# B4
# B5
# C1
# C2
# C3
# C4
# C5
```

---

#### 3.

```ruby
temperatura_min_celsius = 10
temperatura_max_celsius = 40

(temperatura_min_celsius..temperatura_max_celsius).each do |temperatura|
  if temperatura <= 19
    puts "#{temperatura} - frio"
  elsif temperatura >= 20 and temperatura <= 29
    puts "#{temperatura} - agradável"
  elsif temperatura >= 30
    puts "#{temperatura} - quente"
  end
end

# 10 - frio
# 11 - frio
# 12 - frio
# 13 - frio
# 14 - frio
# 15 - frio
# 16 - frio
# 17 - frio
# 18 - frio
# 19 - frio
# 20 - agradável
# 21 - agradável
# 22 - agradável
# 23 - agradável
# 24 - agradável
# 25 - agradável
# 26 - agradável
# 27 - agradável
# 28 - agradável
# 29 - agradável
# 30 - quente
# 31 - quente
# 32 - quente
# 33 - quente
# 34 - quente
# 35 - quente
# 36 - quente
# 37 - quente
# 38 - quente
# 39 - quente
# 40 - quente
```

---

#### 4. DESAFIO

```ruby
(1..10).each do |numero|
  puts numero
  numero.times do |x|
    puts "#{x + 1}. Rafael"
  end
end
```

Considerando uma sequência de 1 até 3, veja o exemplo abaixo:

```
1
Rafael
2
Rafael
Rafael
3
Rafael
Rafael
Rafael
```

Escreva um código que imprima , linha a linha a sequência de 1 até 10. Entre cada número, imprima o seu nome a quantidade de vezes referente ao número que você imprimiu.
