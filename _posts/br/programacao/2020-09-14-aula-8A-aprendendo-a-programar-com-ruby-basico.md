---
layout: post
title: 'Aula 8A - Aprendendo a programar com Ruby: O Básico para iniciantes'
excerpt: Essa é a quinta aula com o conteúdo básico do Ruby. Explico brevemente sobre a função each em um Array e em um Hash. Este é o material da aula 8A do curso aprendendo a programar com ruby, o básico para iniciantes. Nunca é tarde para começar a programar! Eu criei um curso gratuito, fácil e didático voltado para iniciantes. Confira mais informações aqui nessa publicação.
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
date: 2020-09-14 15:38 +0200
last_modified_at: 2020-12-21
---
![](/blog/images/curso_ruby_basico/banner-curso-ruby-8A.jpg)

> :warning: Material da aula 8.A! Veja mais informações sobre o curso e a lista completa das aulas em: [http://cursoprogramacao.rafaelbiriba.com/](http://cursoprogramacao.rafaelbiriba.com/) :warning:

# 8.A. Ruby Basics 5 - Each

Essa é a quinta aula com o conteúdo básico do Ruby. Explico brevemente sobre a função each em um Array e em um Hash.

Não deixe de tentar resolver os exercícios da aula e investir algum tempo estudando mais sobre o assunto.


### Vídeo da aula

- [https://www.youtube.com/watch?v=ZBGkbodOFn0](https://www.youtube.com/watch?v=ZBGkbodOFn0)

### Conteúdo da aula

- Array .each
- Hash .each
- break
- next

##### Exemplos da aula

```ruby
["Rafael", "Roberto"].each do |nome|
  puts nome
end
```

```ruby
exemplo = [1,2,3]
exemplo.each do |numero|
  puts numero * 10
end
```

```ruby
{ a: 1, b: 2, c: 3 }.each do |chave, valor|
  puts "a chave #{chave} tem o valor #{valor}"
end
```

```ruby
exemplo = { valor: 10, taxa: 20 }
exemplo.each do |chave, valor|
  puts "a chave #{chave} tem o valor #{valor}"
end
```

```ruby
exemplo = [{nome: "Rafael"}, {nome: "Roberto"}]
exemplo.each do |pessoa|
  puts "Oi #{pessoa[:nome]}!"
end
```

```ruby
exemplo = { compras: [10,20,30] }
total = 0
exemplo[:compras].each do |compra|
  total = total + compra
end
puts total
```

```ruby
exemplo = [1,2,3,4,5,6]
exemplo.each do |numero|
  puts numero
  if numero > 3
    puts "Break!"
   break
  end
end
# 1
# 2
# 3
# 4
# Break!
```

```ruby
exemplo = ["Rafael", "Roberto", "Rafael", "Rafael", "Rodolfo"]
exemplo.each do |nome|
  if nome == "Rafael"
    next
  else
   puts nome
  end
end
# Roberto
# Rodolfo
```

### Links úteis

- [https://ruby-doc.org/core-2.7.0/Array.html#method-i-each](https://ruby-doc.org/core-2.7.0/Array.html#method-i-each)

- [https://ruby-doc.org/core-2.7.0/Hash.html#method-i-each](https://ruby-doc.org/core-2.7.0/Hash.html#method-i-each)

- [https://docs.ruby-lang.org/en/2.4.0/syntax/control_expressions_rdoc.html](https://docs.ruby-lang.org/en/2.4.0/syntax/control_expressions_rdoc.html)


### Exercícios

#### 1.

Considerando essa lista abaixo:

```ruby
peso_em_kilos = [10,23,44,95]
```

Escreva um programa que imprima individualmente cada peso da lista em gramas ao invés de kilos.

DICA: 1kg = 1000g

---

#### 2.

Utilizando o código com a variável abaixo:

```ruby
lista = "Rafael!Roberto!Rodolfo!Marcos!Rodrigo!Jorge!Lucas!Carlos!Dario!Ronaldo!Luis!Moises!Tulio!Armando!Beto!Mathias"
```
Escreva um programa que imprima a messagem: "Oi, nome!", onde `nome` seja cada nome individualmente da lista acima!

DICA: Utilize .split

---

#### 3

Utilizando o código com a variável abaixo:

```ruby
exemplo = {a: 1, b: 2, c: 3, d: 7, e: 9}
```
Escreva um programa que calcule e imprima o resultado da soma de `a + c + e` ?

NOTA: Você deve usar o `.each` e `next`

DICA: Você talvez precise criar uma variável `soma` com o valor inicial zero, para ir somando os valores desejados.

---

#### 4

Utilizando o código com a variável abaixo:

```ruby
agenda = [{nome: "Rafael", telefone: "5566"}, {nome: "Rodolfo", telefone: "9988"}, {nome: "Romário", telefone: "2299"}]
procurar_por = "Rodolfo"
```

Considerando a pessoa selecionada na variável `procurar_por`, imprima o nome e telefone desse contato.

NOTA: Você deve usar o `.each` e `next` e `break`

---

#### 5 - DESAFIO

Utilizando o código com a variável abaixo:

```ruby
carnes = ["picanha", "costela", "alcatra", "maminha"]
pontos = ["mal passada", "ao ponto", "bem passada"]
```

Considerando as variáveis acima, escreva um programa que imprima em linhas diferentes todas as opções possíveis de carne e ponto. Exemplo: "picanha mal passada" "picanha ao ponto" "picanha bem passada" ...

NOTA: Você deve usar o `.each`

---

##### Correção dos exercícios

- [https://rafaelbiriba.com/blog/br/programacao/aula-8B-aprendendo-a-programar-com-ruby-basico/](/blog/br/programacao/aula-8B-aprendendo-a-programar-com-ruby-basico/)
