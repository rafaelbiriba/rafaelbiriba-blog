---
layout: post
title: "Aula 7A - Aprendendo a programar com Ruby: O Básico para iniciantes"
excerpt: "Material da aula 7A do curso aprendendo a programar com ruby, o básico para iniciantes. Nunca é tarde para começar a programar! Eu criei um curso gratuito, fácil e didático voltado para iniciantes. Confira mais informações aqui nessa publicação."
category: [br, programacao]
lang: br
tags: [programação, tecnologia, curso, ruby, iniciantes]
comments: true
share: true
ads: true
---

![](/blog/images/curso_ruby_basico/banner-curso-ruby-7A.jpg)

> :warning: Material da aula 7.A! Veja mais informações sobre o curso e a lista completa das aulas em: [http://cursoprogramacao.rafaelbiriba.com/](http://cursoprogramacao.rafaelbiriba.com/) :warning:

# 7.A. Ruby Basics 4 - Conditionals

Essa é a quarta aula com o conteúdo básico do Ruby. Explico brevemente sobre boolean e condicionais (if/else/unless).
Não deixe de tentar resolver os exercícios da aula e investir algum tempo estudando mais sobre o assunto.


### Vídeo da aula

- []()

### Conteúdo da aula

- Boolean

- Conditionals
  - if/else/unless
  - ternary operator

##### Exemplos da aula


```ruby
if true then
  puts "é verdadeiro!"
end

if true
  puts "é verdadeiro!"
end
```

```ruby
exemplo = "rafael"
if exemplo == "rafael"
  puts "Oi Rafael!"
end
```

```ruby
exemplo = 5
if exemplo != 1
  puts "Não é 1"
end
```

```ruby
exemplo = 11
if exemplo <= 10
  puts "menor/igual a 10"
else
  puts "maior que 10"
end
```

```ruby
exemplo = true
if exemplo != true
  puts "não é true!"
end

unless exemplo == true
  puts "não é true"
end
```

```ruby
exemplo = "Rafael"
if exemplo == "Rafael"
  idade = "30 anos"
else
  idade = "desconhecido"
end
puts idade
```

```ruby
exemplo = "Rafael"
if exemplo == "Rafael"
  puts "Oi Rafael!"
elsif exemplo == "Roberto"
  puts "Oi Roberto"
else
  puts "Oi Desconhecido"
end
```

```ruby
a = 20
b = 30
if a == 20 and b == 40
  puts "a é 20 e b é 40"
elsif a == 30 and b == 30
  puts "a é 30 e b é 30"
elsif a == 20 and b == 30
  puts "a é 20 e b é 30"
else
  puts "alguma coisa está errada"
end
```

```ruby
a = 5
b = 2
if a == 5 or b == 2
  puts "a é 5 ou b é 2"
end
a = 40
b = 2
if a == 5 or b == 2
  puts "a é 5 ou b é 2"
end
a = 5
b = 1
if a == 5 or b == 2
  puts "a é 5 ou b é 2"
end
```

```ruby
exemplo = "Rafael"
idade = exemplo == "Rafael" ? "30 anos" : "desconhecido"
puts idade
```

```ruby
exemplo = "Roberto"
idade = exemplo == "Rafael" ? "30 anos" : "desconhecido"
puts idade
```

### Links úteis

- [https://ruby-doc.org/core-2.7.0/TrueClass.html](https://ruby-doc.org/core-2.7.0/TrueClass.html)

- [https://ruby-doc.org/core-2.7.0/FalseClass.html](https://ruby-doc.org/core-2.7.0/FalseClass.html)

- [https://docs.ruby-lang.org/en/master/syntax/control_expressions_rdoc.html](https://docs.ruby-lang.org/en/master/syntax/control_expressions_rdoc.html)

### Exercícios

#### 1.
Utilizando o código com a variável abaixo:

```ruby
peso = 50
```

Se a variável peso é maior ou igual à 70: imprimir o texto "Está acima do peso."
Se a variável peso for menor ou igual que 40, imprimir "Está abaixo do peso"
Se a variável estiver entre 40~70, imprimir "Está no peso ideal"

NOTA: Para verificar se o código está correto, execute mais de uma vez, trocando o valor do peso para 100 e 30.

---

#### 2
Considerando o código abaixo:

```ruby
valor = 10
if valor > 10
  taxa = 5
else
  taxa = 2
end
puts taxa
```

Converta o código acima para uma única linha.

---

#### 3
Considerando os exemplos abaixo:

```ruby
exemplo = {
  valor: 9
  taxa: 5
}
```
```
exemplo = {
  valor: 25
  taxa: 9
}
```
```
exemplo = {
  valor: 14
  taxa: 25
}
```

Escreva um código (utilizando apenas um bloco de if/elsif/else) que verifique o hash exemplo e:
1. Se valor ou taxa for maior que 15, imprimir "Muito alto"
2. Se valor e taxa somados forem maior que 30, imprimir "Soma muito alta"

NOTA: Você deve utilizar uma váriavel de exemplo por vez. Utilizando o mesmo código e verificando se o retorno esta correto.

NOTA2: Você não pode criar nenhuma variável adicional.

---

#### 4 - DESAFIO

Você precisa escrever um código para calcular IMC corporal.

```ruby
IMC:
<18.5 - Abaixo do peso
18.5 ~ 24.99 - Normal
> 25 - Acima do peso
> 30 - Obeso
```

Seus pacientes são:

- `Mario - 200.2kg - 1,75m`
- `Roberta - 65.6kg - 1,65m`
- `Pedro - 79.7kg - 1,77m`
- `Ana - 35.3kg - 1,60m`

Formula do IMC: Peso / (Altura metros * Altura metros)

Imprima o resultado correto do IMC para cada paciente, utilizando o mesmo código, apenas mudando as variáveis.

---
