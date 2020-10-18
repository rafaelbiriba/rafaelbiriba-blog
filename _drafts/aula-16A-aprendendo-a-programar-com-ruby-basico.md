---
layout: post
title: "Aula 16A - Aprendendo a programar com Ruby: O Básico para iniciantes"
excerpt: "Material da aula 16A do curso aprendendo a programar com ruby, o básico para iniciantes. Nunca é tarde para começar a programar! Eu criei um curso gratuito, fácil e didático voltado para iniciantes. Confira mais informações aqui nessa publicação."
category: [br, programacao]
lang: br
tags: [programação, tecnologia, curso, ruby, iniciantes]
comments: true
share: true
ads: true
---

![](/blog/images/curso_ruby_basico/banner-curso-ruby-16A.jpg)

> :warning: Material da aula 16.A! Veja mais informações sobre o curso e a lista completa das aulas em: [http://cursoprogramacao.rafaelbiriba.com/](http://cursoprogramacao.rafaelbiriba.com/) :warning:

# 16.A. Classes e Objetos 2

Nessa aula eu explico herança de classes, override (sobrescrita de métodos), método super, e a diferença entre require e require_relative.
É uma aula continuação da aula [15A](https://rafaelbiriba.com/blog/br/programacao/aula-15A-aprendendo-a-programar-com-ruby-basico/)

Não deixe de tentar resolver os exercícios da aula e investir algum tempo estudando mais sobre o assunto.

### Vídeo da aula

- []()

### Conteúdo da aula

- herança

- Override e super

- require

#### Herança

```ruby
class Carro
  def rodas
    4
  end
end

class Corsa < Carro
end

meu_carro = Corsa.new
meu_carro.rodas # 4
```

```ruby

class Carro
  def rodas
    4
  end
end

class Corsa < Carro
  attr_reader :nome

  def initialize(nome)
    @nome = nome
  end
end

meu_carro = Corsa.new("corsinha")
meu_carro.rodas # 4
meu_carro.nome # "corsinha"
```

#### Override

```ruby
class Animal
  def self.som
    "Grrrr"
  end
end

class Cachorro < Animal
end

Animal.som # Grrrr
Cachorro.som # Grrrr

##################################

class Animal
  def self.som
    "Grrrr"
  end
end

class Cachorro < Animal
  def self.som
    "Au au"
  end
end

Animal.som # Grrrr
Cachorro.som # Au Au
```

```ruby
class Pizza
  attr_reader :sabor, :preco

  def initialize(sabor, preco)
    @sabor = sabor
    @preco = preco
  end
end

class Mussarela < Pizza
end

pizza1 = Mussarela.new #ArgumentError (wrong number of arguments (given 0, expected 2))

#########################

class Pizza
  attr_reader :sabor, :preco

  def initialize(sabor, preco)
    @sabor = sabor
    @preco = preco
  end
end

class Mussarela < Pizza

  # Override
  def initialize
  end
end

pizza1 = Mussarela.new
pizza1.sabor # nil
pizza1.preco # nil
# Sabor e preco vazios, pois o método de initialize foi sobrescrito e com isso não está inicializando as variáveis

#########################

class Pizza
  attr_reader :sabor, :preco

  def initialize(sabor, preco)
    @sabor = sabor
    @preco = preco
  end
end

class Mussarela < Pizza

  # Override
  def initialize(preco)
    @sabor = "mussarela"
    @preco = preco
  end
end

pizza1 = Mussarela.new(35)
pizza1.sabor # mussarela
pizza1.preco # 35
```

#### Super

```ruby
class Pizza
  attr_reader :sabor, :preco

  def initialize(sabor, preco)
    @sabor = sabor
    @preco = preco
  end
end

class Mussarela < Pizza
  def initialize(preco)
    super("mussarela", preco)
  end
end

pizza1 = Mussarela.new(35)
pizza1.sabor # mussarela
pizza1.preco # 35
```

```ruby
class PizzaBasica
  def self.preco
    35
  end
end

class PizzaCalabreza < PizzaBasica
  def self.preco
    # super chama o método preco da classe acima "PizzaBasica" e retorna o valor
    super + 5
  end
end

PizzaBasica.preco # 35

PizzaCalabreza.preco # 40
```

#### require e require_relative

É uma `best practice` do ruby de criar uma classe em arquivos ruby separados. Isso contribui para que o código fique organizado.

Utilizando `require` é possível espalhar o código em arquivos diferentes ruby, e no topo de cada arquivo, podemos dar require daquele arquivo que precisamos.

- `require`: Usado para bibliotecas (`gems`) ou para requerer arquivos. Necessário passar o caminho completo, por exemplo: `require 'C:/Projetos/Ruby/minha_pasta/meu_arquivo.rb'`

- `require_relative`: Uma forma alternativa para requerer um arquivo local, não precisando passar o caminho completo. Se o arquivo estiver na mesma pasta, basta fazer `require_relative 'meu_arquivo.rb'`

```ruby
# carro.rb

class Carro
  def self.rodas
    4
  end
end
```

```ruby
# fusca.rb

require_relative "carro.rb"

class Fusca < Carro
end

puts Fusca.rodas
```

### Links úteis

- [https://ruby-doc.org/docs/ruby-doc-bundle/UsersGuide/rg/inheritance.html](https://ruby-doc.org/docs/ruby-doc-bundle/UsersGuide/rg/inheritance.html)

- [http://rubylearning.com/satishtalim/ruby_inheritance.html](http://rubylearning.com/satishtalim/ruby_inheritance.html)

### Exercícios

#### 1.
Considerando o código abaixo:

```ruby
class Bicicleta
  def rodas
    2
  end

  def motorizada
    false
  end
end
```

Escreva uma classe `BicicletaEletrica` que extende `Bicicleta`, sobrescrevendo o método `motorizada` para retornar `true`, de forma que o código abaixo funcine com a nova classe BicicletaEletrica.

```ruby
minha_bike_normal = Bicicleta.new
minha_bike_normal.rodas # 2
minha_bike_normal.motorizada # false

minha_bike = BicicletaEletrica.new
minha_bike.rodas # 2
minha_bike.motorizada # true
```

---

#### 2.

Considerando o código abaixo:

```ruby
class Carro
  def lugares
    2
  end

  def combustivel
    "gasolina"
  end
end
```

Implemente uma classe `CorsaFlex` que extende de carro. O `CorsaFlex` possui 4 lugares (ao invés de 2). E funciona com `gasolina` e `alcool`.

NOTA: Utilizar `super` nesse exercício.

```ruby
carro = CorsaFlex.new
carro.lugares # 4
carro.combustivel # gasolina e alcool
```

---

# 3.

Considerando o arquivo `circulo.rb` com o código abaixo:

```ruby
# arquivo circulo.rb
class Circulo
  def self.area_circulo(raio)
    3.1416*raio*raio
  end
end
```

Crie um arquivo `pizza.rb` e escreva uma classe `Pizza` (ela não extende nenhuma classe). Você deve recever o tamanho da pizza (diâmetro) na inicialização, e criar um método `area` para retornar a área da pizza em `cm2`

NOTA: `Circulo.area_circulo` recebe `raio` que é `metade do diâmetro`

DICA: Não deixe de requerer o arquivo `circulo.rb` para poder utilizar o método `area_circulo`.

```ruby
pizza = Pizza.new(20)
pizza.area # 314.16 cm2
```

---

### Correção dos exercícios

- [https://rafaelbiriba.com/blog/br/programacao/aula-16B-aprendendo-a-programar-com-ruby-basico/](/blog/br/programacao/aula-16B-aprendendo-a-programar-com-ruby-basico/)
