---
layout: post
title: 'Aula 13A - Aprendendo a programar com Ruby: O Básico para iniciantes'
excerpt: Nessa aula eu explico o que são métodos/funções no ruby e trago alguns exemplo de como eles são utilizados. Este é o material da aula 13A do curso aprendendo a programar com ruby, o básico para iniciantes. Nunca é tarde para começar a programar! Eu criei um curso gratuito, fácil e didático voltado para iniciantes. Confira mais informações aqui nessa publicação.
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
date: 2020-11-09 13:18 +0100
last_modified_at: 2020-12-21
---
![](/blog/images/curso_ruby_basico/banner-curso-ruby-13A.jpg)

> :warning: Material da aula 13.A! Veja mais informações sobre o curso e a lista completa das aulas em: [http://cursoprogramacao.rafaelbiriba.com/](http://cursoprogramacao.rafaelbiriba.com/) :warning:

# 13.A. Métodos

Nessa aula eu explico o que são métodos/funções no ruby e trago alguns exemplo de como eles são utilizados.

Não deixe de tentar resolver os exercícios da aula e investir algum tempo estudando mais sobre o assunto.

### Vídeo da aula

- [https://www.youtube.com/watch?v=KxvjULJ-5CE](https://www.youtube.com/watch?v=KxvjULJ-5CE)

### Conteúdo da aula

- Métodos

- Recursividade

##### Exemplos da aula

###### Métodos

```ruby
puts("puts também é um método!")
```

```ruby

def meu_metodo
end

###

def meu_metodo
  1
  2
  3
end

meu_metodo # Na ausência de um return, retorna o ultimo valor (3)

###

def meu_metodo
  1
  return 2
  3
end

meu_metodo # Retorna o valor (2) por causa do return

valor = meu_metodo # Atribui para uma variável
puts meu_metodo # Imprimi
```

```ruby
a = 10 + 5
puts a

###

def calculo
 10 + 5
end

a = calculo
puts a

puts calculo
```

```ruby
# return retorna o valor para a função, também saindo do each
# (similar ao break, só que nesse caso, um valor é retornado pra função)
def dentro_de_um_each
  [1,2,3,4,5,6].each do |numero|
    puts numero
    return numero if numero == 3
  end
end

variavel = dentro_de_um_each
# 1
# 2
# 3
puts variavel
# 3
```

```ruby
def metade_da_soma
 valor = 50 + 50
 valor = valor / 2
 valor
end

puts metade_da_soma # Imprime 50
```

```ruby
def meu_metodo(parametro)
  return parametro
end

meu_metodo("Rafael") # Retorna o valor do parâmetro ("Rafael")
nome = meu_metodo("Rafael") # Atribui para uma variável
puts meu_metodo("Rafael") # Imprimi

###

def meu_metodo(valor1, valor2)
  soma = valor1 + valor2
  return soma
end

def meu_metodo(valor1, valor2)
  valor1 + valor2
end

meu_metodo(1, 2) # Retorna o valor da soma (3)
nome = meu_metodo(1, 2) # Atribui o 3 para uma variável
puts meu_metodo(1, 2) # Imprimi 3
```

```ruby
def metade_da_soma(valor1, valor2)
 valor = valor1 + valor2
 valor = valor / 2
 valor
end

puts metade_da_soma(10, 20) # Imprime 15
```

```ruby
def bom_dia(nome, idioma)
  if idioma == "Portugues"
    puts "Bom dia #{nome}"
  elsif idioma == "Alemao"
    puts "Guten Morgen #{nome}"
  elsif idioma == "Ingles"
    puts "Good morning #{nome}"
  else
    puts "Idioma não suportado"
  end
end

bom_dia("Rafael", "Portugues") # Bom dia Rafael
bom_dia("Klaus", "Alemao") # Guten Morgen Klaus
bom_dia("John", "Portugues") # Bom dia John
bom_dia("Sofia", "Italiano") # Idioma não suportado
```

```ruby
# Um método chamando o outro

def valor_com_imposto(valor)
  valor * 1.20
end

def calcular_valor_final(valor)
  if valor < 20
    return valor
  else
    return valor_com_imposto(valor)
  end
end

puts calcular_valor_final(50) # Imprime 60
puts calcular_valor_final(15) # Imprime 15
```

```ruby
# Um método chamando o outro

def cor_proibida?(cor)
  if cor == "preto" or cor == "vermelho"
    return true
  else
    return false
  end
end

def puts_cor(cor)
  if cor_proibida?(cor)
    puts "---"
  else
    puts cor
  end
end

puts_cor("branco") # branco
puts_cor("preto") # ---
puts_cor("verde") # verde
puts_cor("azul") # azul
puts_cor("vermelho") # ---
```

```ruby
# Recursividade

def fatorial(numero)
  return 1 if numero == 1
  numero * fatorial(numero-1)
end

puts fatorial(4)
```

### Links úteis

- [https://ruby-doc.org/core-2.7.0/doc/syntax/methods_rdoc.html](https://ruby-doc.org/core-2.7.0/doc/syntax/methods_rdoc.html)

- [https://ruby-doc.org/core-2.7.0/doc/syntax/calling_methods_rdoc.html](https://ruby-doc.org/core-2.7.0/doc/syntax/calling_methods_rdoc.html)

### Exercícios

#### 1.
Considerando o código abaixo:

```ruby
def segundos(minutos)
end

puts segundos(10) # Imprime 600
puts segundos(75) # Imprime 4500
```

O método segundos recebe um valor em minutos como parametro e retorna esse valor em segundos. Escreva o método `segundos` de forma que ele retorne os valores corretamente, como representado acima.

---

#### 2.
Utilizando métodos, implementar o `exercício 4` da [aula 7A](https://rafaelbiriba.com/blog/br/programacao/aula-7A-aprendendo-a-programar-com-ruby-basico/), calculando o IMC de cada paciente.

Considerando o código abaixo:

```ruby
def imc(peso, altura, nome)
end

imc(200.2, 1.75, "Mario")
imc(65.6, 1.65, "Roberta")
imc(79.7, 1.77, "Pedro")
imc(35.3, 1.60, "Ana")
```

Escreva a função (método) `imc` que calcula o imc de cada paciente e imprime o resultado.

Nota: `Formula do IMC: Peso / (Altura metros * Altura metros)`

```ruby
IMC:
<18.5 - Abaixo do peso
18.5 ~ 24.99 - Normal
> 25 - Acima do peso
> 30 - Obeso
```

---

#### 3.
Utilizando métodos, implementar o `exercício 4` da [aula 8A](https://rafaelbiriba.com/blog/br/programacao/aula-8A-aprendendo-a-programar-com-ruby-basico/), para buscar telefones em um agenda telefônica.

Considerando o código abaixo:

```ruby
agenda = [{nome: "Rafael", telefone: "5566"}, {nome: "Rodolfo", telefone: "9988"}, {nome: "Romário", telefone: "2299"}, {nome: "Ana", telefone: "1634"}, {nome: "Rodrigo", telefone: "9533"}]

def procurar_numero(agenda, nome)
end

puts procurar_numero(agenda, "Rodrigo")
puts procurar_numero(agenda, "Ana")
```

Escreva uma função/método `procurar_numero` que receba a agenda telefônica e o nome como parâmetro, e retorne o telefone.

---

### Correção dos exercícios

- [https://rafaelbiriba.com/blog/br/programacao/aula-13B-aprendendo-a-programar-com-ruby-basico/](/blog/br/programacao/aula-13B-aprendendo-a-programar-com-ruby-basico/)
