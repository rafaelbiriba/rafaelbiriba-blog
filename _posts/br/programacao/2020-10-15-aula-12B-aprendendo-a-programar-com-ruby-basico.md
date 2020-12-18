---
layout: post
title: 'Aula 12B - Aprendendo a programar com Ruby: O Básico para iniciantes'
excerpt: Essa é a segunda parte da aula de revisão de conteúdo, com a correção comentada dos exercícios. Este é o material da aula 12B do curso aprendendo a programar com ruby, o básico para iniciantes. Nunca é tarde para começar a programar! Eu criei um curso gratuito, fácil e didático voltado para iniciantes. Confira mais informações aqui nessa publicação.
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
date: 2020-10-15 11:13 +0200
last_modified_at: 2020-12-21
---
![](/blog/images/curso_ruby_basico/banner-curso-ruby-12B.jpg)

> :warning: Material da aula 12.B! Veja mais informações sobre o curso e a lista completa das aulas em: [http://cursoprogramacao.rafaelbiriba.com/](http://cursoprogramacao.rafaelbiriba.com/) :warning:

# 12.B. Revisão de conteúdo

Essa é a segunda parte da aula de revisão de conteúdo, com a correção comentada dos exercícios.

Não deixe de tentar resolver os exercícios da aula e investir algum tempo estudando mais sobre o assunto.

### Vídeo da aula

- []

### Exercícios

- [https://rafaelbiriba.com/blog/br/programacao/aula-12A-aprendendo-a-programar-com-ruby-basico/](/blog/br/programacao/aula-12A-aprendendo-a-programar-com-ruby-basico/)

### Correção dos exercícios

#### 1.

```ruby
# SOLUCAO 1
numeros_digitados = []

10.times do
  puts "Digite um número:"
  numero = gets.to_i
  numeros_digitados << numero
end

maior_numero = 0

numeros_digitados.each do |numero|
  if maior_numero < numero
    maior_numero = numero
  end
end

puts maior_numero


###############################
# SOLUCAO 2
##############################

maior_numero = 0

10.times do
  puts "Digite um número:"
  numero = gets.to_i

  if maior_numero < numero
    maior_numero = numero
  end
end

puts maior_numero

```

---

#### 2.

```ruby
puts "Digite o primeiro numero:"
primeiro_numero = gets.to_i

puts "Digite o segundo numero:"
segundo_numero = gets.to_i

puts "Digite soma ou subtracao:"
operacao = gets.chomp

if operacao == "soma"
  puts primeiro_numero + segundo_numero
elsif operacao == "subtracao"
  puts primeiro_numero - segundo_numero
else
  puts "Operação não reconhecida #{operacao}"
end

```

---

#### 3.

```ruby
senha_secreta = 589
senha_digitada = 0
while senha_secreta != senha_digitada do
  puts "Digite um número:"
  senha_digitada = gets.to_i

  if senha_digitada > senha_secreta
    puts "A senha secreta é menor que a senha digitada!"
  elsif senha_digitada < senha_secreta
    puts "A senha secreta é maior que a senha digitada!"
  end
end
puts "Parabéns, você acertou!"

```

---

#### 4.

```ruby
comidas = {
  massas: ["Espageti", "Fusili", "Parafuso"],
  frutas: ["Banana", "Morango", "Abacaxi", "Pessego", "Uva"],
  legumes: ["Cenoura", "Beterraba", "Batata"],
  graos: ["Feijao", "Ervilha", "Lentilha"],
  folhas: ["Alface", "Agriao", "Espinafre"]
}

todas = []

comidas.each do |chave, valor|
  # chave: massas, valor: [espageti, fusili]...
  # chave: frutas, valor: [banana, ...]

  valor.each do |comida|
    todas << comida
  end
end

puts "#{todas}"

```

---

#### 5.

```ruby
lista1 = [1,3,6,7,8,12,15,22,24,29,30,35,42,46,55,76,78,83,89,95,102,107,114]
lista2 = [3,5,9,12,13,17,29,31,35,40,51,64,69,71,75,78,81,83,90,96,100,105,107]

lista_comum = []

lista1.each do |numero_lista1|
  lista2.each do |numero_lista2|
    if numero_lista1 == numero_lista2
      lista_comum << numero_lista1
      break
    end
  end
end

puts "#{lista_comum}"

# [3, 12, 29, 35, 78, 83, 107]
```

---

#### 6.


```ruby
###############################
# SOLUCAO 1
###############################

(1..100).each do |numero|
  if numero % 2 == 0 and numero % 5 == 0
    imprimir = "pingpong"
  elsif numero % 2 == 0
    imprimir = "ping"
  elsif numero % 5 == 0
    imprimir = "pong"
  else
    imprimir = numero
  end

  puts imprimir
end

###############################
# SOLUCAO 2
###############################

(1..100).each do |numero|
  imprimir = ""

  if numero % 2 == 0
    imprimir += "ping"
  end

  if numero % 5 == 0
    imprimir += "pong"
  end

  if imprimir == ""
    imprimir = numero
  end

  puts imprimir
end

```
