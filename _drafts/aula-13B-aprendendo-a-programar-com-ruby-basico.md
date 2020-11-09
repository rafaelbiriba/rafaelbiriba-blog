---
layout: post
title: "Aula 13B - Aprendendo a programar com Ruby: O Básico para iniciantes"
excerpt: "Material da aula 13B do curso aprendendo a programar com ruby, o básico para iniciantes. Nunca é tarde para começar a programar! Eu criei um curso gratuito, fácil e didático voltado para iniciantes. Confira mais informações aqui nessa publicação."
category: [br, programacao]
lang: br
tags: [programação, tecnologia, curso, ruby, iniciantes]
comments: true
share: true
ads: true
---

![](/blog/images/curso_ruby_basico/banner-curso-ruby-13B.jpg)

> :warning: Material da aula 13.B! Veja mais informações sobre o curso e a lista completa das aulas em: [http://cursoprogramacao.rafaelbiriba.com/](http://cursoprogramacao.rafaelbiriba.com/) :warning:

# 13.B. Métodos - Correção dos exercícios

Nessa aula eu faço a correção comentada dos exercícios da aula de métodos/funções.

### Vídeo da aula

- []()

### Exercícios

- [https://rafaelbiriba.com/blog/br/programacao/aula-13A-aprendendo-a-programar-com-ruby-basico/](/blog/br/programacao/aula-13A-aprendendo-a-programar-com-ruby-basico/)

##### Correção dos exercícios

#### 1.

```ruby
def segundos(minutos)
  minutos * 60
end

puts segundos(10) # Imprime 600
puts segundos(75) # Imprime 4500
```

---

#### 2.

```ruby
def imc(peso, altura, nome)
  imc = peso / (altura * altura)
  if imc > 30
    puts "#{nome} está obeso(a)"
  elsif imc > 25
    puts "#{nome} está acima do peso"
  elsif imc > 18.5 and imc < 24.99
    puts "#{nome} está normal"
  elsif imc < 18.5
    puts "#{nome} está abaixo do peso"
  else
    puts "Algo está errado"
  end
end

imc(200.2, 1.75, "Mario")
imc(65.6, 1.65, "Roberta")
imc(79.7, 1.77, "Pedro")
imc(35.3, 1.60, "Ana")
```
---

#### 3.

```ruby
agenda = [{nome: "Rafael", telefone: "5566"}, {nome: "Rodolfo", telefone: "9988"}, {nome: "Romário", telefone: "2299"}, {nome: "Ana", telefone: "1634"}, {nome: "Rodrigo", telefone: "9533"}]

def procurar_numero(agenda, nome)
  agenda.each do |contato|
    # puts contato
    return contato[:telefone] if contato[:nome] == nome
    end
  end
end

puts procurar_numero(agenda, "Rodrigo")
puts procurar_numero(agenda, "Ana")
```
