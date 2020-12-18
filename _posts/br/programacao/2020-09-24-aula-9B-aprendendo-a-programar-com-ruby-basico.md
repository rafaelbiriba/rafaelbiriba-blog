---
layout: post
title: 'Aula 9B - Aprendendo a programar com Ruby: O Básico para iniciantes'
excerpt: Essa é a sexta parte da aula de ruby básico 6, onde eu faço a correção comentada dos exercícios. Este é o material da aula 9B do curso aprendendo a programar com ruby, o básico para iniciantes. Nunca é tarde para começar a programar! Eu criei um curso gratuito, fácil e didático voltado para iniciantes. Confira mais informações aqui nessa publicação.
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
date: 2020-09-24 10:42 +0200
last_modified_at: 2020-12-21
---
![](/blog/images/curso_ruby_basico/banner-curso-ruby-9B.jpg)

> :warning: Material da aula 9.B! Veja mais informações sobre o curso e a lista completa das aulas em: [http://cursoprogramacao.rafaelbiriba.com/](http://cursoprogramacao.rafaelbiriba.com/) :warning:

# 9.B. Ruby Basics 6 - Correção dos exercícios

Essa é a sexta parte da aula de ruby básico 6, onde eu faço a correção comentada dos exercícios.

Não deixe de tentar resolver os exercícios da aula e investir algum tempo estudando mais sobre o assunto.

### Vídeo da aula

- [https://www.youtube.com/watch?v=3ELQeKogB_c](https://www.youtube.com/watch?v=3ELQeKogB_c)

### Exercícios

- [https://rafaelbiriba.com/blog/br/programacao/aula-9A-aprendendo-a-programar-com-ruby-basico/](/blog/br/programacao/aula-9A-aprendendo-a-programar-com-ruby-basico/)

### Correção dos exercícios

#### 1.

```ruby

# OPCAO DE RESPOSTA 1
21.times do |x|
  if x % 3 != 0
    puts x
  end
end

# OPCAO DE RESPOSTA 2
21.times do |x|
  if x % 3 == 0
    next
  end
  puts x
end

# OPCAO DE RESPOSTA 3
21.times do |x|
  next if x % 3 == 0
  puts x
end

# OPCAO DE RESPOSTA 4
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
# 4*4*4*4*4

resultado = 4
4.times do
  resultado = resultado * 4
end
puts resultado
```

---

#### 3.

```ruby
  nome = "Rafael"
  idade = 30

  idade.times do |x|
    x = x + 1 #Evitar o zero

    if x == idade
      puts "#{nome} tem #{x} ano(s)"
    else
      puts "#{nome} já teve #{x} ano(s)"
    end
  end
  # Rafael já teve 1 ano(s)
  # Rafael já teve 2 ano(s)
  # ....
  # Rafael tem 30 ano(s)
```

---

#### 4.

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

#### 5.

```ruby
inicio = 32

(inicio..51).each { |x| puts x }

(inicio..51).each do |x|
  puts x
end
# 32
# 33
# 34
# 35
# 36
# 37
# 38
# 39
# 40
# 41
# 42
# 43
# 44
# 45
# 46
# 47
# 48
# 49
# 50
# 51
```

---

#### 6.

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

#### 7. DESAFIO

```ruby
(1..10).each do |numero|
  puts numero
  numero.times do |x|
    puts "#{x + 1}. Rafael"
  end
end
# 1
# 1. Rafael
# 2
# 1. Rafael
# 2. Rafael
# 3
# 1. Rafael
# 2. Rafael
# 3. Rafael
# 4
# 1. Rafael
# 2. Rafael
# 3. Rafael
# 4. Rafael
# ...
# ...
# ...
# 10
# 1. Rafael
# 2. Rafael
# 3. Rafael
# 4. Rafael
# 5. Rafael
# 6. Rafael
# 7. Rafael
# 8. Rafael
# 9. Rafael
# 10. Rafael
```
