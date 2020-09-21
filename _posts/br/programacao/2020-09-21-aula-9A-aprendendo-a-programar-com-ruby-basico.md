---
layout: post
title: 'Aula 9A - Aprendendo a programar com Ruby: O Básico para iniciantes'
excerpt: Material da aula 9A do curso aprendendo a programar com ruby, o básico para
  iniciantes. Nunca é tarde para começar a programar! Eu criei um curso gratuito,
  fácil e didático voltado para iniciantes. Confira mais informações aqui nessa publicação.
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
date: 2020-09-21 20:19 +0200
---
![](/blog/images/curso_ruby_basico/banner-curso-ruby-9A.jpg)

> :warning: Material da aula 9.A! Veja mais informações sobre o curso e a lista completa das aulas em: [http://cursoprogramacao.rafaelbiriba.com/](http://cursoprogramacao.rafaelbiriba.com/) :warning:

# 9.A. Ruby Basics 6 - Times and Range

Essa é a sexta aula com o conteúdo básico do Ruby. Explico brevemente sobre Times e Range e rapidamente sobre o operador matemático modulos (%).
Não deixe de tentar resolver os exercícios da aula e investir algum tempo estudando mais sobre o assunto.

### Vídeo da aula

- [https://www.youtube.com/watch?v=knhLvJ0MbaE](https://www.youtube.com/watch?v=knhLvJ0MbaE)

### Conteúdo da aula

- Times

- Range

- Math Operations: The modulo operator (%)

##### Exemplos da aula

##### Math: %

```ruby
3 % 5
# 3

10 % 2
# 0

6 % 5
#1
```

##### Times

```ruby
10.times { puts "Oi!" }

10.times {
  puts "Oi!"
}

10.times do puts "Oi!" end

10.times do
  puts "Oi!"
end

contador = 5
contador.times do
  puts "contando..."
end
```

```ruby
10.times { |n| puts "Oi! #{n}" } #0 1 2 3 4 5 6 7 8 9

10.times { |n|
  puts "Oi! #{n}"
}

10.times do |n| puts "Oi! #{n}" end

2.times do |x|
  puts x
end
# 0
# 1
```

```ruby
4.times do |n|
  puts n
  if n % 2 == 0
    puts "PAR!"
  end
end
#0
# PAR!
#1
#2
#PAR!
#3
```

```ruby
10.times do |n|
  puts n
  if n % 5 == 0
    puts "multiplo de 5!"
    break
  end
end
#0
#multiplo de 5!


10.times do |n|
  n = n + 1
  puts n
  if n % 5 == 0
    puts "multiplo de 5!"
    break
  end
end
#1
#2
#3
#4
#5
#multiplo de 5!
```

```ruby
4.times do |n|
  if n == 2
    next
  else
    puts n
  end
end
#0
#1
#3

4.times do |n|
  if n == 2
    next
  end
  puts n
end
#0
#1
#3

4.times do |n|
  next if n == 2
  puts n
end
#0
#1
#3
```

```ruby
valor = 0
5.times do
  valor = valor + 10
end
puts valor
# 50
```

##### Ranges

```ruby
(1..10).to_a
#[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

(55..67).to_a
# [55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67]
```

```ruby
inicio = 5
fim = 8
(inicio..fim).to_a
# [5, 6, 7, 8]
```

```ruby
nascimento = 1989
hoje = 2020
(nascimento..hoje).each do |x|
  puts x
end
#1989
#1990
#1991
#...
#2019
#2020
```

### Links úteis

- [https://ruby-doc.org/core-2.7.0/Integer.html#method-i-times](https://ruby-doc.org/core-2.7.0/Integer.html#method-i-times)

- [https://ruby-doc.org/core-2.7.0/Range.html](https://ruby-doc.org/core-2.7.0/Range.html)

### Exercícios

#### 1.

Utilizando a função `.times`, escreva um código que imprima todos os números de 1 até 21, exceto múltiplos de 3.

---

#### 2.

Cálculo de potência usando `.times`:

```
Uma potência de expoente natural é o resultado da multiplicação de
um dado número por si mesmo um certo número de vezes, ou seja,
é uma forma de representar sucessivas multiplicações de um só fator,
repetido um determinado número de vezes.
Ou seja, 3 x 3 x 3 x 3 x 3 é o mesmo que 3 elevado a 5.
```

Calcule e imprima o valor de 4 elevado a 5, usando `.times`

---

#### 3.

Crie uma variável com seu nome e uma variável com sua idade.
Escreva um código que imprima cada ano de sua idade a frase `Fulano já teve 1 ano(s)` ou `Fulano tem 1 ano`

Exemplo:

```ruby
  nome = "Fulano"
  idade = 3
  # Fulano já teve 1 ano(s)
  # Fulano já teve 2 ano(s)
  # Fulano tem 3 ano(s)
```

---

#### 4.

Considerando a variável abaixo:

```ruby
letras = ["A", "B", "C"]
```

Escreva um código que imprima em cada linha a sequência: `A1`, `A2`, `A3`, `A4`, `A5`, `B1`, `B2`, `B3`, `B4`, `B5`, `C1`, `C2`, `C3`, `C4`, `C5`

NOTA: Você pode combinar o uso de `.times` e `.each` aqui.

---

#### 5.

Considerando a variável abaixo:

```ruby
inicio = 32
```
Imprima todos os números desde a variável `inicio` até o número 51.

---

#### 6.

Considerando a variável abaixo:

```ruby
temperatura_min_celsius = 10
temperatura_max_celsius = 40
```

Utilizando `ranges`, escreva um código que imprima cada uma das temperaturas junto com uma descrição baseado na regra abaixo:

- `<=19` Imprimir "frio"
- `>=20 e <=29` Imprimir "agradável"
- `>=30` imprimir "quente"

---

#### 7. DESAFIO

Considerando uma sequência de 1 até 3, veja o exemplo abaixo:

```
1
1. Rafael
2
1. Rafael
2. Rafael
3
1. Rafael
2. Rafael
3. Rafael
```

Escreva um código que imprima ,linha a linha, uma sequência de 1 até 10. Entre cada número da sequência, imprima o seu nome a quantidade de vezes referente ao número que você imprimiu. (Veja o exemplo acima e faça o mesmo de 1 até 10)
