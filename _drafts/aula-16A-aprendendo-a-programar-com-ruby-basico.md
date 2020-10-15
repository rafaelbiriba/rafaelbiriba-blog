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

Nessa aula eu explico variáveis de instância e de classe, métodos `set` e `get`, attribute accessors e método inicialização de uma classe. É uma aula continuação da aula [15A](https://rafaelbiriba.com/blog/br/programacao/aula-15A-aprendendo-a-programar-com-ruby-basico/)

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

#### Override - WIP

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
  def initialize
    @sabor = "mussarela"
    @preco = 20
  end
end

pizza1 = Mussarela.new
pizza1.sabor # mussarela
pizza1.preco # 20
```

### Links úteis

- [https://ruby-doc.org/docs/ruby-doc-bundle/UsersGuide/rg/inheritance.html](https://ruby-doc.org/docs/ruby-doc-bundle/UsersGuide/rg/inheritance.html)

- [http://rubylearning.com/satishtalim/ruby_inheritance.html](http://rubylearning.com/satishtalim/ruby_inheritance.html)

### Exercícios

#### 1.

---
