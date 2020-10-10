---
layout: post
title: "Aula 13A - Aprendendo a programar com Ruby: O Básico para iniciantes"
excerpt: "Material da aula 13A do curso aprendendo a programar com ruby, o básico para iniciantes. Nunca é tarde para começar a programar! Eu criei um curso gratuito, fácil e didático voltado para iniciantes. Confira mais informações aqui nessa publicação."
category: [br, programacao]
lang: br
tags: [programação, tecnologia, curso, ruby, iniciantes]
comments: true
share: true
ads: true
---

![](/blog/images/curso_ruby_basico/banner-curso-ruby-13A.jpg)

> :warning: Material da aula 13.A! Veja mais informações sobre o curso e a lista completa das aulas em: [http://cursoprogramacao.rafaelbiriba.com/](http://cursoprogramacao.rafaelbiriba.com/) :warning:

# 13.A. Métodos

### Vídeo da aula

- []()

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

puts bom_dia("Rafael", "Portugues") # Bom dia Rafael
puts bom_dia("Klaus", "Alemao") # Guten Morgen Klaus
puts bom_dia("John", "Portugues") # Good morning John
puts bom_dia("Sofia", "Italiano") # Idioma não suportado
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

puts calcular_valor_final(50)
puts calcular_valor_final(15)
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

### Links úteis

- []()

### Exercícios

#### 1.

---
