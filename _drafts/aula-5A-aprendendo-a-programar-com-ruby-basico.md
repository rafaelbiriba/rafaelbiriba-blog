---
layout: post
title: "Aula 5A - Aprendendo a programar com Ruby: O Básico para iniciantes"
excerpt: "Material da aula 5A do curso aprendendo a programar com ruby, o básico para iniciantes. Nunca é tarde para começar a programar! Eu criei um curso gratuito, fácil e didático voltado para iniciantes. Confira mais informações aqui nessa publicação."
category: [br, programacao]
lang: br
tags: [programação, tecnologia, curso, ruby, iniciantes]
comments: true
share: true
ads: true
---

![](/blog/images/curso_ruby_basico/banner-curso-ruby-5A.jpg)

> :warning: Material da aula 5! Veja mais informações sobre o curso e a lista completa das aulas em: [http://cursoprogramacao.rafaelbiriba.com/](http://cursoprogramacao.rafaelbiriba.com/) :warning:

# 5.A. Ruby Basics 2

Essa é a segunda aula com o conteúdo básico do Ruby. Explico brevemente sobre array e string#split.
Não deixe de tentar resolver os exercícios da aula e investir algum tempo estudando mais sobre o assunto.

### Vídeo da aula

-

### Conteúdo da aula

- Arrays

- String .split

##### Exemplos da aula

```ruby
puts []

puts [1,2,3]

puts ["a", "b", "c"]

puts [1, "a", "2", 2, 2, 2]
```

```ruby
nomes = ["Rafael", "Lucas", "Roberto"]
        # 0/-3      1/-2    2/ -1
puts "#{nomes}"
puts nomes[0]
puts nomes[1]
puts nomes[2]
puts nomes[-3]
puts nomes[-2]
puts nomes[-1]
```

```ruby
nomes = ["Rafael", "Lucas", "Roberto"]
        # 0/-3      1/-2    2/ -1
numeros = [1,2,3,4,5]
   # index 0 1 2 3 4
puts "PONTUACAO"
puts "#{nomes[0]} - #{numeros[2]}" #Rafael - 3
puts "#{nomes[2]} - #{numeros[4]}" #Roberto - 5
```

```ruby
exemplo = [1, 2, [4, 5], 6]
  # index  0  1  2       3
puts "#{exemplo[0]}" # 1
puts "#{exemplo[1]}" # 2
puts "#{exemplo[3]}" # 6

puts "#{exemplo[2]}" #[4,5]

novo_array = exemplo[2] #[4,5]
                  # index 0 1
puts "#{novo_array[0]}" # 4
puts "#{novo_array[1]}" # 5

puts "#{exemplo[2][0]}" # 4
puts "#{exemplo[2][1]}" # 5
```

```ruby
  exemplo = [
    "Rafael",
    "Roberto",
    [
      100,
      200,
      300,
      [
        1000,
        2000
      ]
    ]
  ]

  puts exemplo[0] #Rafael
  puts "#{exemplo[2]}"
  puts "#{exemplo[2][3]}"
  puts "#{exemplo[2][3][0]}" #1000
  puts "#{exemplo[2][3][1]}" #2000
```

```ruby
  a = 1
  b = 2
  puts "#{[a, b, a+b]}"
  # [1, 2, 3]
```

```ruby
nomes = "Rafael Roberto Lucas"
lista_de_nomes = nomes.split(" ")
#       ["Rafael", "Roberto", "Lucas"]
# index  0          1          2

puts lista_de_nomes[1] #Roberto
```

```ruby
exemplo = ["Rafael", "Roberto"]
puts "Meu nome é #{exemplo[0]} e o meu amigo é #{exemplo[1]}"

"Rafael#Roberto".split("#")
# ["Rafael", "Roberto"]
```

### Links úteis

- [https://ruby-doc.org/core-2.7.0/Array.html](https://ruby-doc.org/core-2.7.0/Array.html)

- [https://ruby-doc.org/core-2.7.1/String.html#method-i-split](https://ruby-doc.org/core-2.7.1/String.html#method-i-split)

### Exercícios

#### 1.
Criar uma lista (array) simples contendo 3 elementos: Um número inteiro, um texto qualquer e um número float.
Imprimir cada elemento da lista, separadamente em uma linha.

---

#### 2.
Considerando as variáveis abaixo:
```
a = 5
b = 10
c = 11
d = 15
e = 20
```
Utilizando as variáveis disponíveis, sem digitar nenhum número ou criar nenhuma variável adicional, imprimir o seguinte resultado: `Valores: [5,150,110,2,1]`

---

#### 3.
Considerando o array abaixo:
```
exemplo = [["a","b"], ["c","d"], ["e", "f"]]
```
Imprima o texto `faca` utilizando o array acima.

---

#### 4.
Considerando o array abaixo:
```
exemplo = [[1,2,["a", "b"]], [3,4,["c", "d"]]]
```
Imprima o texto `3a2d` utilizando o array acima.

---

#### 5.
Considerando a variável abaixo:
```
texto = "banana#morango#abacaxi"
```
Imprimir o resultado em uma lista.
`Resultado: ["banana", "morango", "abacaxi"]`

---

#### 6. [DESAFIO]
Considerando a variável abaixo:
```
texto = "banana#morango#abacaxi!limao!mamao"
```
Imprimir o resultado em uma lista.
`Resultado: ["banana", "morango", "abacaxi", "limao", "mamao"]`
