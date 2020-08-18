---
layout: post
title: "Aula 10B - Aprendendo a programar com Ruby: O Básico para iniciantes"
excerpt: "Material da aula 10B do curso aprendendo a programar com ruby, o básico para iniciantes. Nunca é tarde para começar a programar! Eu criei um curso gratuito, fácil e didático voltado para iniciantes. Confira mais informações aqui nessa publicação."
category: [br, programacao]
lang: br
tags: [programação, tecnologia, curso, ruby, iniciantes]
comments: true
share: true
ads: true
---

![](/blog/images/curso_ruby_basico/banner-curso-ruby-10B.jpg)

> :warning: Material da aula 10.B! Veja mais informações sobre o curso e a lista completa das aulas em: [http://cursoprogramacao.rafaelbiriba.com/](http://cursoprogramacao.rafaelbiriba.com/) :warning:

# 10.B. Ruby Basics 7 - Correção dos exercícios

Essa é a sétima parte da aula de ruby básico 2, onde eu faço a correção comentada dos exercícios.

### Vídeo da aula

- []()

### Exercícios

- [https://rafaelbiriba.com/blog/br/programacao/aula-10A-aprendendo-a-programar-com-ruby-basico/](/blog/br/programacao/aula-10A-aprendendo-a-programar-com-ruby-basico/)


##### Correção dos exercícios

#### 1.

```ruby
total = 0

while total < 8 do
  total = total + 1
  puts "Estou utilizando while"
end
```

---

#### 2.

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
  if total > 10000000
    break
  end
  resposta = resposta + 1
end

puts resposta
```
---
