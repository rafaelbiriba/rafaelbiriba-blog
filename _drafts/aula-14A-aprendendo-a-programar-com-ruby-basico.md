---
layout: post
title: "Aula 14A - Aprendendo a programar com Ruby: O Básico para iniciantes"
excerpt: "Material da aula 14A do curso aprendendo a programar com ruby, o básico para iniciantes. Nunca é tarde para começar a programar! Eu criei um curso gratuito, fácil e didático voltado para iniciantes. Confira mais informações aqui nessa publicação."
category: [br, programacao]
lang: br
tags: [programação, tecnologia, curso, ruby, iniciantes]
comments: true
share: true
ads: true
---

![](/blog/images/curso_ruby_basico/banner-curso-ruby-14A.jpg)

> :warning: Material da aula 14.A! Veja mais informações sobre o curso e a lista completa das aulas em: [http://cursoprogramacao.rafaelbiriba.com/](http://cursoprogramacao.rafaelbiriba.com/) :warning:

# 14.A. Programação orientada a objetos

Nessa aula eu faço uma breve introdução a programação orientada a objetos. Explicando o conceito com exemplos. Também abordo classes e instâncias, além de métodos de classe e métodos de instâncias.
Não deixe de tentar resolver os exercícios da aula e investir algum tempo estudando mais sobre o assunto.

### Vídeo da aula

- []()

### Conteúdo da aula

- Programação orientada a objetos

- Classes e instâncias

- Métodos de classe

- Métodos de instância

#### Programação orientada a objetos

A orientação a objetos é um paradigma de programação que considera cada instância de um objeto de forma única, de acordo com as suas características.

O Ruby é considerado uma linguagem orientada a objetos, visto que tudo é considerado um objeto, até mesmo os tipos básicos da linguagem.

**Exemplo prático:** Quando você vai comprar uma pizza, ela pode ser de muitos sabores diferentes. Nesse caso `Pizza` seria a classe. Ela possui métodos/atributos para dizer se tem azeitona ou não, o tipo de queijo e etc.

Se você pega 2 caixas de pizzas no mercado, mesmo que sejam do mesmo sabor, elas não vão ser as mesmas pizzas. Elas podem ter as mesmas características, porém dentro da caixa, elas são duas pizzas diferentes.

Em casa, você pode remover o queijo de uma das pizzas, e isso não vai afetar a outra pizza.

Na orientação a objeto, o mesmo conceito é aplicado. Você tem classes (como a `Pizza`) e você tem as instâncias dessa classe (como a `Pizza de mussarela` e `Pizza de peperoni`).

Trazendo esse conceito para o Ruby:

```ruby
"Rafael".size #6
"Oi".size #2
```

Dessa forma `"Rafael"` e `"Oi"` são da classe `String`, porém são duas instâncias diferentes, possuem valores diferentes e por isso que o método `size` retorna valores diferentes.

#### Tudo no Ruby são objetos

```ruby
nome = "Rafael"
nome.size # 6
nome.split("") # ["R", "a", "f", "a", "e", "l"]
nome.class # String
nome.object_id # 200

nome = "Rodrigo"
nome.object_id # 220

# Textos iguais tem IDs diferentes, pois são instâncias diferentes.
"Rafael".object_id
"Rafael".object_id
"Rafael".object_id
```

#### Classe e Instancias

```ruby
class Pizza
end


class Pizza
  test = 1  # Erro
end
```

```ruby
class Pizza
end

Pizza.new # Cria uma nova instancia da classe Pizza

pizza1 = Pizza.new # Cria uma nova instancia da classe Pizza e atribui pra variável pizza1
pizza1.object_id

pizza2 = Pizza.new # Cria uma nova instancia da classe Pizza e atribui pra variável pizza2
pizza2.object_id

Pizza.new.object_id # Vai sempre ter IDs diferentes, pois são novas instâncias
```

#### Métodos de classe e métodos de instância

```ruby
# Métodos de classe

class Pizza
  def self.tem_gluten?
    true
  end
end

Pizza.tem_gluten? # true
```

```ruby
# Métodos de classe

class Pizza
  def self.nome
    "Pizza de #{sabor}"
  end

  def self.sabor
    "mussarela"
  end
end

Pizza.nome # "Pizza de mussarela"
```


```ruby
# Métodos de instância

class Pizza
  def tem_gluten?
    true
  end
end

Pizza.tem_gluten? # (undefined method `tem_gluten?' for Pizza:Class)
Pizza.new.tem_gluten? #true
```

```ruby
# Métodos de instância

class Pizza
  def tem_gluten?
    true
  end

  def gluten_info
    if tem_gluten?
      "Tem glúten!"
    end
  end
end

pizza = Pizza.new
pizza.tem_gluten? # true
pizza.gluten_info # Tem glúten!
```

```ruby
# Métodos de classe com métodos de instância

class Pizza
  def tipo_de_queijo
    "Mussarela"
  end

  def self.tempo_de_preparo
    5
  end
end

Pizza.tempo_de_preparo # 5
Pizza.tipo_de_queijo # undefined method `tipo_de_queijo`

pizza = Pizza.new # Cria uma instância
pizza.tipo_de_queijo? # Mussarela
pizza.tempo_de_preparo # undefined method `tempo_de_preparo' for #<Pizza:0x00007fdf07942378>)

pizza.class # Pizza
pizza.class.tempo_de_preparo # 5
```

#### Mais exemplos

```ruby
class Carro
  def self.km_por_litro(km, litros)
    "#{km / litros} km/l"
  end
end

Carro.km_por_litro(125.0, 8.0) # 15.625 km/l
```

```ruby
class Carro
  def self.consumo
    12
  end

  def self.calculo_abastecimento(km)
    "Você precisa abastecer #{km / consumo} litros"
  end
end

Carro.calculo_abastecimento(245.0) # "Você precisa abastecer 20.416666666666668 litros"
```

### Links úteis

- [https://pt.wikipedia.org/wiki/Programa%C3%A7%C3%A3o_orientada_a_objetos](https://pt.wikipedia.org/wiki/Programa%C3%A7%C3%A3o_orientada_a_objetos)

- [https://www.devmedia.com.br/orientacao-a-objetos-com-ruby/33726](https://www.devmedia.com.br/orientacao-a-objetos-com-ruby/33726)

### Exercícios

#### 1.
Considerando o código abaixo:

```ruby
puts Calculadora.ao_quadrado(3)
```

Criar uma classe chamada `Calculadora` e um método chamado `ao_quadrado`, que calcule o valor quadrado de um número.

#### 2.
Considerando o código abaixo:

```ruby
  carro1 = CarroAzul.new
  carro2 = CarroPreto.new
  carro3 = CarroBranco.new

  [carro1, carro2, carro3].each do |carro|
    puts carro.cor
  end

  # Azul
  # Preto
  # Branco
```

Implemente 3 diferentes classes `CarroAzul`, `CarroPreto`, `CarroBranco`. Essas 3 classes, vão ter o mesmo método de instância `cor` retornando a respectiva cor.

#### 3.
Utilizando classes, implementar o `exercício 2` da [aula 13A](https://rafaelbiriba.com/blog/br/programacao/aula-13A-aprendendo-a-programar-com-ruby-basico/), calculando o IMC de cada paciente.

Considerando o código abaixo:

```ruby
Imc.calcular(200.2, 1.75, "Mario")
Imc.calcular(200.2, 1.75, "Mario")
Imc.calcular(65.6, 1.65, "Roberta")
Imc.calcular(79.7, 1.77, "Pedro")
Imc.calcular(35.3, 1.60, "Ana")
```

Escreva a uma classe `Imc` que implemente o método `calcular` que calcula o imc de cada paciente e imprime o resultado.

Nota: `Formula do IMC: Peso / (Altura metros * Altura metros)`

```ruby
IMC:
<18.5 - Abaixo do peso
18.5 ~ 24.99 - Normal
> 25 - Acima do peso
> 30 - Obeso
```

---

#### 4.
Utilizando classes, implementar o `exercício 3` da [aula 13A](https://rafaelbiriba.com/blog/br/programacao/aula-13A-aprendendo-a-programar-com-ruby-basico/), para buscar telefones em um agenda telefonica.


Os dados são:

```ruby
[{nome: "Rafael", telefone: "5566"}, {nome: "Rodolfo", telefone: "9988"}, {nome: "Romário", telefone: "2299"}, {nome: "Ana", telefone: "1634"}, {nome: "Rodrigo", telefone: "9533"}]
```

Considerando o código abaixo:

```ruby
puts Agenda.dados
puts Agenda.procurar_numero("Rodrigo")
puts Agenda.procurar_numero("Ana")
```

- `Agenda.dados` deve retornar o array de dados (disponível acima)

- `Agenda.procurar_numero` deve retornar o número de uma pessoa na agenda

---
