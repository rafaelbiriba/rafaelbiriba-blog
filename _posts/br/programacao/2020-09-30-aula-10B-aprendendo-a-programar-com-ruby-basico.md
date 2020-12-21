---
layout: post
title: 'Ruby Basics 7 - Correção dos exercícios - Aula 10B - Aprendendo a programar com Ruby: O Básico para iniciantes'
excerpt: Nessa aula eu faço a correção comentada dos exercícios da aula de ruby basics 7 - while(10A). Este é o material da aula 10B do curso aprendendo a programar com ruby, o básico para iniciantes. Nunca é tarde para começar a programar! Eu criei um curso gratuito, fácil e didático voltado para iniciantes. Confira mais informações aqui nessa publicação.
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
date: 2020-09-30 22:43 +0200
last_modified_at: 2020-12-21
---
![](/blog/images/curso_ruby_basico/banner-curso-ruby-10B.jpg)

> :warning: Material da aula 10.B! Veja mais informações sobre o curso e a lista completa das aulas em: [http://cursoprogramacao.rafaelbiriba.com/](http://cursoprogramacao.rafaelbiriba.com/) :warning:

# 10.B. Ruby Basics 7 - Correção dos exercícios

Nessa aula eu faço a correção comentada dos exercícios da aula de [ruby basics 7 - while](https://rafaelbiriba.com/blog/br/programacao/aula-10A-aprendendo-a-programar-com-ruby-basico/).

Não deixe de tentar resolver os exercícios da aula e investir algum tempo estudando mais sobre o assunto.

### Vídeo da aula

- []()

### Exercícios

- [https://rafaelbiriba.com/blog/br/programacao/aula-10A-aprendendo-a-programar-com-ruby-basico/](/blog/br/programacao/aula-10A-aprendendo-a-programar-com-ruby-basico/)


##### Correção dos exercícios

#### 1.

```ruby
puts "Digite os minutos:"
minutos = gets.to_i

puts "Isso equivale à #{minutos * 60} segundos"
```

---

#### 2.

```ruby
puts "Digite o nome de uma fruta:"
fruta = gets.chomp

if fruta == "morango"
  puts "Suco de morango é bom!"
elsif fruta == "manga"
  puts "Sorvete de manga é bom!"
else
  puts "#{fruta} parece ótima(o)!"
end
```

---

#### 3.

```ruby
total = 0

while total < 8 do
  total = total + 1
  puts "Estou utilizando while"
end
```

---

#### 4.

```ruby
## POSSIVEL RESPOSTA 1
resposta = 1
total = 2

while total < 10000000
  resposta = resposta + 1
  total = total * 2
end

puts resposta - 1 #23


## POSSIVEL RESPOSTA 2
limite = 10000000
total = 2
resposta = 1

while true
  total = total * 2
  if total > limite
    break
  end
  resposta = resposta + 1
end

puts resposta
```
---

#### 5. DESAFIO

```ruby
  senha = "A4B5"
  senha_digitada = ""

  while senha_digitada != senha
    puts "Digite a senha correta:"
    senha_digitada = gets.chomp
  end
  puts "Senha descoberta!"
```

---
