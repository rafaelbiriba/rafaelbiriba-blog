---
layout: post
title: "Aula 15A - Aprendendo a programar com Ruby: O Básico para iniciantes"
excerpt: "Material da aula 15A do curso aprendendo a programar com ruby, o básico para iniciantes. Nunca é tarde para começar a programar! Eu criei um curso gratuito, fácil e didático voltado para iniciantes. Confira mais informações aqui nessa publicação."
category: [br, programacao]
lang: br
tags: [programação, tecnologia, curso, ruby, iniciantes]
comments: true
share: true
ads: true
---

![](/blog/images/curso_ruby_basico/banner-curso-ruby-15A.jpg)

> :warning: Material da aula 15.A! Veja mais informações sobre o curso e a lista completa das aulas em: [http://cursoprogramacao.rafaelbiriba.com/](http://cursoprogramacao.rafaelbiriba.com/) :warning:

# 15.A. Classes e Objetos 1

Nessa aula eu explico variáveis de instância e de classe, métodos `set` e `get`, attribute accessors e método inicialização de uma classe. É uma aula continuação da aula [14A](https://rafaelbiriba.com/blog/br/programacao/aula-14A-aprendendo-a-programar-com-ruby-basico/)

Não deixe de tentar resolver os exercícios da aula e investir algum tempo estudando mais sobre o assunto.

### Vídeo da aula

- []()

### Conteúdo da aula

- instance variable

- class variable

- get / set methods

- attribute accessor, reader, writer

- initialize

#### Instance variable

```ruby
class Carro
  @cor = "preto"
  @modelo = "corsa"

  def tipo
    "#{@modelo} #{@cor}"
  end
end

Carro.tipo # NoMethodError (undefined method `tipo' for Carro:Class)

Carro.new.tipo

```

### Links úteis

- [https://docs.ruby-lang.org/en/2.7.0/Class.html](https://docs.ruby-lang.org/en/2.7.0/Class.html)

- [https://ruby-doc.org/core-2.7.0/Object.html#method-i-instance_variables](https://ruby-doc.org/core-2.7.0/Object.html#method-i-instance_variables)

- [https://syntaxdb.com/ref/ruby/class-variables](https://syntaxdb.com/ref/ruby/class-variables)

- [https://www.rubyguides.com/2018/11/attr_accessor/](https://www.rubyguides.com/2018/11/attr_accessor/)

- [https://ruby-doc.org/core-2.7.1/Module.html#method-i-attr_accessor](https://ruby-doc.org/core-2.7.1/Module.html#method-i-attr_accessor)

- [https://ruby-doc.org/core-2.7.1/Module.html#method-i-attr_reader](https://ruby-doc.org/core-2.7.1/Module.html#method-i-attr_reader)

- [https://ruby-doc.org/core-2.7.1/Module.html#method-i-attr_writer](https://ruby-doc.org/core-2.7.1/Module.html#method-i-attr_writer)

### Exercícios

#### 1.

---
