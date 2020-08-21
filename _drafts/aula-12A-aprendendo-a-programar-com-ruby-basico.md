---
layout: post
title: "Aula 12A - Aprendendo a programar com Ruby: O Básico para iniciantes"
excerpt: "Material da aula 12A do curso aprendendo a programar com ruby, o básico para iniciantes. Nunca é tarde para começar a programar! Eu criei um curso gratuito, fácil e didático voltado para iniciantes. Confira mais informações aqui nessa publicação."
category: [br, programacao]
lang: br
tags: [programação, tecnologia, curso, ruby, iniciantes]
comments: true
share: true
ads: true
---

![](/blog/images/curso_ruby_basico/banner-curso-ruby-12A.jpg)

> :warning: Material da aula 12.A! Veja mais informações sobre o curso e a lista completa das aulas em: [http://cursoprogramacao.rafaelbiriba.com/](http://cursoprogramacao.rafaelbiriba.com/) :warning:

# 12.A. Revisão de conteúdo

Essa é uma aula de revisão de conteúdo. Vou mostrar rapidamente tudo que foi ensinado nas últimas aulas, além dos exercícios um pouco mais complexos.
Não deixe de tentar resolver os exercícios da aula e investir algum tempo estudando mais sobre o assunto.

### Vídeo da aula

- []

### Conteúdo da aula

- Revisão do conteúdo das aulas anteriores

##### Exemplos da aula

```ruby
puts "Aula 4"
puts 1 + 2
puts 5.0 / 2
puts 5 / 2

teste = 10
puts "teste + 1 = #{teste + 1}"
```

```ruby
puts "Aula 5 - Array"
lista = [100, 102.50, "Teste"]

nomes = "Rafael,Roberto"
nomes.split(",")
puts "#{nomes}" #["Rafael", "Roberto"]
```

```ruby
puts "Aula 6 - Hash"

lista = []
lista << "a"
lista << "b"
puts "#{lista}"
# ["a", "b"]

#################################

hash = { a: 2 }
puts hash[:a]
# 2

hash[:b] = 3
puts hash
# { a: 2, b: 3}
```

```ruby
puts "Aula 7 - Conditionals"

a = 5
if a < 10
  puts "menor que 10"
else
  puts "maior que 10"
end

#################################

nome = "Rafael"
if nome != "Roberto"
  puts "não é o Roberto!"
end

puts "não é o Roberto!" if nome != "Roberto"

#################################

cor = "Vermelho"
unless cor == "Preto"
  puts "Essa cor não é preto!"
end

#################################

bebida = "Refrigerante"
comida = "Hambuger"

if bebida == "Refrigerante" and comida == "Hambuger"
  puts "Excelente combinação"
elsif bebida == "Nescau" and comida == "Pão com ovo"
  puts "Belo café da manhã"
else
  puts "Não conheço essa combinação"
end
```

```ruby
puts "Aula 8 - Each"

lista = [1,2,3,4,5]
lista.each do |numero|
  puts numero
end

#################################

dicionario = { a: "A", b: "Be", c: "Ce", d: "De" }
dicionario.each do |chave, valor|
  puts "a chave #{chave} é #{valor}"
end

#################################

lista = [1,2,3,4,5]
lista.each do |numero|
  break if numero > 3
  puts numero
end
# 1, 2, 3

#################################

lista = [1,2,3,4,5]
lista.each do |numero|
  next if numero == 3
  puts numero
end
# 1, 2, 4, 5
```

```ruby
puts "Aula 9 - Times and Range"

10.times do
  puts "Imprimir 10 vezes!"
end

#################################

10.times do |numero|
  puts "Contando: #{numero}..."
end

#################################

4.times do |n|
  puts n
  if n % 2 == 0
    puts "PAR"
  emd
end
# 0
# PAR
# 1
# 2
# PAR
# 3

#################################

(50..55).each do |numero|
  puts numero
end
# 50 51 52 53 54 55

#################################
```

```ruby
puts "Aula 10 - While"

numero = 1

while numero < 50 do
  puts numero
  numero = numero + 1
end

# 1 2 3 4 5 ...... 47 48 49 50

#################################

nome = "rafael"
nome_digitado = ""

while nome != nome_digitado
  puts "Digite um nome:"
  nome_digitado = gets.chomp
end
puts "Acertou!"
```

### Exercícios

#### 1.

Peça para o usuário digitar 10 números. Seu programa deve retornar uma mensagem dizendo qual foi o maior número digitado. (Exemplo: `O maior número é 59`)

---

#### 2.

Faça uma calculadora simples, para somar ou diminuir dois números. Pergunte ao usuário o primeiro número, o segundo número e pergunte se a operação ser ser `soma` ou `subtracao` e retorne o valor.

---

#### 3.

Jogo da adivinhação da senha: Crie uma variável (vai ser a senha secreta) com um número inteiro a ser adivinhado pelo usuário. Pergunte ao usuário para adivinhar o número. Se ele acertar, imprima que ele acertou. Se ele errar, diga se o palpite foi maior ou menor que o número secreto e pergunte novamente. Continue perguntando ao usuário até o valor digitado for igual a sua senha secreta.

---

#### 4.

Considerando o código abaixo:

```ruby
comidas = {
  massa: ["Espageti", "Fusili", "Parafuso"],
  frutas: ["Banana", "Morango", "Abacaxi", "Pessego", "Uva"],
  legumes: ["Cenoura", "Beterraba", "Batata"],
  graos: ["Feijao", "Ervilha", "Lentilha"],
  folhas: ["Alface", "Agriao", "Espinafre"]
}
```

Crie uma única lista contendo todos as comidas e imprima seu valor.

---

#### 5.

Considerando o código abaixo:

```ruby
lista1 = [1,3,6,7,8,12,15,22,24,29,30,35,42,46,55,76,78,83,89,95,102,107,114]
lista2 = [3,5,9,12,13,17,29,31,35,40,51,64,69,71,75,78,81,83,90,96,100,105,107]
```

Imprima uma lista de todos os valores que são comuns a `lista1` e `lista2`

---

#### 6.

Imprima os números de 1 a 100. Se o número for múltiplo de 2, imprimir `ping` ao invez do número. Se o número for múltiplo de 5, imprimir `pong` ao invez do número. Se for multiplo de 2 e de 5, imprimir `pingpong`.

Exemplo:

```ruby
1
ping
3
ping
pong
ping
7
ping
9
pingpong
```
