---
layout: post
title: "Aula 10A - Aprendendo a programar com Ruby: O Básico para iniciantes"
excerpt: "Material da aula 10A do curso aprendendo a programar com ruby, o básico para iniciantes. Nunca é tarde para começar a programar! Eu criei um curso gratuito, fácil e didático voltado para iniciantes. Confira mais informações aqui nessa publicação."
category: [br, programacao]
lang: br
tags: [programação, tecnologia, curso, ruby, iniciantes]
comments: true
share: true
ads: true
---

![](/blog/images/curso_ruby_basico/banner-curso-ruby-10A.jpg)

> :warning: Material da aula 10.A! Veja mais informações sobre o curso e a lista completa das aulas em: [http://cursoprogramacao.rafaelbiriba.com/](http://cursoprogramacao.rafaelbiriba.com/) :warning:

# 10.A. Ruby Basics 7 - While

Essa é a sétima aula com o conteúdo básico do Ruby. Explico brevemente sobre While.
Não deixe de tentar resolver os exercícios da aula e investir algum tempo estudando mais sobre o assunto.

### Vídeo da aula

- []()

### Conteúdo da aula

- While

##### Exemplos da aula

```ruby
while EXPRESSAO_VERDADEIRA do
  # alguma coisa
end

while EXPRESSAO_VERDADEIRA
  # alguma coisa
end
```

```ruby
# ATENÇÃO, ESSE EXEMPLO VAI RODAR SEM PARAR NO SEU TERMINAL

exemplo = true
while exemplo do
  puts "ISSO VAI RODAR PRA SEMPRE!! Aperte ctrl+c para parar o programa ou feche o terminal!"
end
```

```ruby
minha_variavel = true

while minha_variavel do
  puts "Entrei no while e vou definir minha_variavel pra false e sair!!"
  minha_variavel = false
end

puts "Já saí do while"
```

```ruby
exemplo = 0

while exemplo < 10 do
  puts exemplo
  exemplo += 1
end

puts exemplo
```

```ruby
exemplo = 1
executar = true

while executar do
  puts exemplo
  exemplo += 1

  if exemplo == 10
    executar = false
  end
end

puts exemplo
```

```ruby
exemplo = 0

while exemplo < 10 do
  puts exemplo
  exemplo += 1

  if exemplo == 5
    break
  end
end

puts exemplo
#0
#1
#2
#3
#4
```

### Links úteis

- [https://docs.ruby-lang.org/en/master/syntax/control_expressions_rdoc.html#label-while+Loop](https://docs.ruby-lang.org/en/master/syntax/control_expressions_rdoc.html#label-while+Loop)

### Exercícios

#### 1.

Escreva um código utilizando `while` que imprima a frase `Estou utilizando while` 8 vezes!

---

#### 2.

Quantas vezes eu posso dobrar o número 2 (exemplo: 2*2*2*2*2) para que o valor fique menos de 10 milhões? (10.000.000)?

NOTA: Usar `while`

---
