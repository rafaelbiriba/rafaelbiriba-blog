---
layout: post
title: 'Aula 16B - Aprendendo a programar com Ruby: O Básico para iniciantes'
excerpt: Material da aula 16B do curso aprendendo a programar com ruby, o básico para
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
date: 2020-12-10 09:41 +0100
---
![](/blog/images/curso_ruby_basico/banner-curso-ruby-16B.jpg)

> :warning: Material da aula 16.B! Veja mais informações sobre o curso e a lista completa das aulas em: [http://cursoprogramacao.rafaelbiriba.com/](http://cursoprogramacao.rafaelbiriba.com/) :warning:

# 16.B. Classes e Objetos 2 - Correção dos exercícios

Nessa aula eu faço a correção comentada dos exercícios da aula de [Classes e Objetos 2](https://rafaelbiriba.com/blog/br/programacao/aula-16A-aprendendo-a-programar-com-ruby-basico/)


### Vídeo da aula

- [https://www.youtube.com/watch?v=tigHXHxaoCE](https://www.youtube.com/watch?v=tigHXHxaoCE)

### Exercícios

- [https://rafaelbiriba.com/blog/br/programacao/aula-16A-aprendendo-a-programar-com-ruby-basico/](https://rafaelbiriba.com/blog/br/programacao/aula-16A-aprendendo-a-programar-com-ruby-basico/)

### Correção dos exercícios

#### 1.

```ruby
class Bicicleta
  def rodas
    2
  end

  def motorizada
    false
  end
end

class BicicletaEletrica < Bicicleta
  def motorizada
    true
  end
end

minha_bike_normal = Bicicleta.new
minha_bike_normal.rodas # 2
minha_bike_normal.motorizada # false

minha_bike = BicicletaEletrica.new
minha_bike.rodas # 2
minha_bike.motorizada # true
```

---

#### 2.

```ruby
class Carro
  def lugares
    2
  end

  def combustivel
    "gasolina"
  end
end

class CorsaFlex < Carro
  def lugares
    super + 2
  end

  def combustivel
    "#{super} e alcool"
  end
end

carro = CorsaFlex.new
carro.lugares # 4
carro.combustivel # gasolina e alcool
```

---

#### 3.

```ruby
# arquivo circulo.rb
class Circulo
  def self.area_circulo(raio)
    3.1416*raio*raio
  end
end
```

```ruby
# arquivo pizza.rb
require_relative "circulo.rb"

class Pizza
  def initialize(diametro)
    @diametro = diametro
  end

  def area
    Circulo.area_circulo(@diametro/2)
  end
end

pizza = Pizza.new(20)
pizza.area # 314.16 cm2
```
