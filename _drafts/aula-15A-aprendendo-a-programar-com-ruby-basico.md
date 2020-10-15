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

- get / set methods

- initialize

- attribute accessor, reader, writer

#### Instance variable

```ruby
class Contador
  def contar
    if @contador
      @contador += 1
    else
      @contador = 0
    end
    @contador
  end
end

Contador.contar # NoMethodError (undefined method `contar' for Contador:Class)

Contador.new.contar # 0
Contador.new.contar # 0

contador1 = Contador.new
contador1.contar # 0
contador1.contar # 1
contador1.contar # 2

contador2 = Contador.new
contador2.contar # 0

contador1.contar # 3
contador2.contar # 1
```

#### get / set methods

```ruby
class Carro
  def definir_cor(cor)
    @cor = cor
  end

  def cor
    @cor
  end
end

meu_carro = Carro.new
meu_carro.definir_cor "preto"
meu_carro.cor #preto

carro_joao = Carro.new
carro_joao.definir_cor "azul"
carro_joao.cor #azul

meu_carro.cor #preto
```

```ruby
class Carro
  def cor= cor
    @cor = cor
  end

  def cor
    @cor
  end
end

meu_carro = Carro.new
meu_carro.cor= "preto"
meu_carro.cor #preto

carro_joao = Carro.new
carro_joao.cor= "azul"
carro_joao.cor #azul

meu_carro.cor #preto
```

#### initialize

```ruby
class Carro
  def initialize(cor, modelo)
    @cor = cor
    @modelo = modelo
  end

  def cor
    @cor
  end

  def modelo
    @modelo
  end

  def especificacao
    "#{@modelo} #{@cor}"
  end
end

meu_carro = Carro.new("preto", "corsa")
meu_carro.cor #preto
meu_carro.modelo #corsa
meu_carro.especificacao # corsa preto

carro_joao = Carro.new("azul") #ArgumentError (wrong number of arguments (given 1, expected 2))

carro_joao = Carro.new("azul", "fusca")
carro_joao.especificacao #fusca azul
```

```ruby
class Carne
  def initialize(nome, pontos)
    @nome = nome
    @pontos = pontos
  end

  def lista_de_opcoes
    lista = []
    @pontos.each do |ponto|
      lista << "#{@nome} #{ponto}"
    end
    lista
  end
end

picanha = Carne.new("picanha", ["ao ponto", "bem passado"])
picanha.lista_de_opcoes
# ["picanha ao ponto", "picanha bem passado"]

alcatra = Carne.new("alcatra", ["mal passada", "ao ponto"])
alcatra.lista_de_opcoes
# ["alcatra mal passada", "alcatra ao ponto"]
```

#### attribute accessor, reader, writer

```ruby
  class Pizza
    attr_reader :sabor

    def initialize(sabor)
      @sabor = sabor
    end
  end

  pizza = Pizza.new("mussarela")
  pizza.sabor #mussarela

  pizza.sabor = "calabresa" #NoMethodError (undefined method `sabor=' for #<Pizza
```

```ruby
  class Pizza
    attr_reader :sabor
    attr_writer :sabor

    def initialize(sabor)
      @sabor = sabor
    end
  end

  pizza = Pizza.new("mussarela")
  pizza.sabor #mussarela

  pizza.sabor = "calabresa"
  pizza.sabor # calabresa
```

```ruby
  class Pizza
    attr_accessor :sabor # attr_reader + attr_writer

    def initialize(s)
      @sabor = s
    end
  end

  pizza = Pizza.new("mussarela")
  pizza.sabor #mussarela

  pizza.sabor = "calabresa"
  pizza.sabor # calabresa
```

#### Exemplo final

##### Parte 1

```ruby
class Autor
  attr_reader :nome

  def initialize(nome)
    @nome = nome
  end
end

class Livro
  attr_reader :nome
  attr_reader :autor

  def initialize(nome, autor)
    @nome = nome
    @autor = autor
  end
end

rafael = Autor.new("Rafael")
livro_piadas = Livro.new("Piadas do Rafael", rafael)

livro_piadas.nome # "Piadas do Rafael"
livro_piadas.autor # #<Autor:0x00007fd38b1e3d48 @nome="Rafael">
livro_piadas.autor.nome # Rafael
```

##### Parte 2

```ruby
class Autor
  attr_reader :nome
  attr_accessor :livros

  def initialize(nome)
    @nome = nome
    @livros = []
  end
end

class Livro
  attr_reader :nome
  attr_reader :autor

  def initialize(nome, autor)
    @nome = nome
    @autor = autor
  end
end

rafael = Autor.new("Rafael")
livro_piadas = Livro.new("Piadas do Rafael", rafael)
rafael.livros << livro_piadas

livro_piadas.nome # "Piadas do Rafael"
livro_piadas.autor # #<Autor:0x00007fd38b1e3d48 @nome="Rafael">
livro_piadas.autor.nome # Rafael

rafael.livros # [#<Livro:0x00007fd38e866c08 @nome="Piadas do Rafael"
rafael.livros.first.nome # "Piadas do Rafael"
```

##### Parte 3

```ruby
class Autor
  attr_reader :nome
  attr_accessor :livros

  def initialize(nome)
    @nome = nome
    @livros = []
  end
end

class Livro
  attr_reader :nome
  attr_reader :autor

  def initialize(nome, autor)
    @nome = nome
    @autor = autor
    adicionar_livro_ao_autor
  end

  def adicionar_livro_ao_autor
    @autor.livros << self
    # self faz referencia a instância atual
  end
end

rafael = Autor.new("Rafael")
livro_piadas = Livro.new("Piadas do Rafael", rafael)

livro_piadas.nome # "Piadas do Rafael"
livro_piadas.autor # #<Autor:0x00007fd38b1e3d48 @nome="Rafael">
livro_piadas.autor.nome # Rafael

rafael.livros # [#<Livro:0x00007fd38e866c08 @nome="Piadas do Rafael"
rafael.livros.first.nome # "Piadas do Rafael"
```

### Links úteis

- [https://docs.ruby-lang.org/en/2.7.0/Class.html](https://docs.ruby-lang.org/en/2.7.0/Class.html)

- [https://ruby-doc.org/core-2.7.0/Object.html#method-i-instance_variables](https://ruby-doc.org/core-2.7.0/Object.html#method-i-instance_variables)

- [https://www.rubyguides.com/2018/11/attr_accessor/](https://www.rubyguides.com/2018/11/attr_accessor/)

- [https://ruby-doc.org/core-2.7.1/Module.html#method-i-attr_accessor](https://ruby-doc.org/core-2.7.1/Module.html#method-i-attr_accessor)

- [https://ruby-doc.org/core-2.7.1/Module.html#method-i-attr_reader](https://ruby-doc.org/core-2.7.1/Module.html#method-i-attr_reader)

- [https://ruby-doc.org/core-2.7.1/Module.html#method-i-attr_writer](https://ruby-doc.org/core-2.7.1/Module.html#method-i-attr_writer)

### Exercícios

#### 1.
Utilizando `attr_reader` e/ou `attr_writer` e/ou `attr_accessor` sempre que puder, crie uma classe `Pessoa` que funcione com o código abaixo:

NOTA: Os métodos `nome` e `sobrenome` não devem ser acessíveis. Apenas `nome_completo`

```ruby
class Pessoa
  # Resolva o exercício aqui
end

roberto = Pessoa.new

roberto.idade = 50
roberto.idade # 50

roberto.nome = "Roberto"
roberto.sobrenome = "da Silva"

roberto.nome #NoMethodError (undefined method `nome'
roberto.sobrenome #NoMethodError (undefined method `sobrenome'

roberto.nome_completo # "Roberto da Silva"
```

---

#### 2.

Crie uma classe `Produto` com atributos `nome` e `preco`. Crie também uma classe `Carrinho` com atributo `produto`. A classe `carrinho` deve implementar um método `total` e calcular quanto custa o total baseado nos produtos que foi adicionado.

Faça as classes no código abaixo, em seguida execute o exercício.

```ruby
class Produto
  # Resolva o exercício aqui
end

class Carrinho
  # Resolva o exercício aqui
end

carrinho_compras = Carrinho.new
carrinho_compras.produtos << Produto.new("leite", 3)
carrinho_compras.produtos << Produto.new("nescau", 5)
carrinho_compras.produtos << Produto.new("pão", 6)
carrinho_compras.produtos << Produto.new("queijo", 8)

carrinho_compras.total # 22
```

---

#### 3.
Criar uma classe `Pessoa` e guardar o nome e telefone de cada pessoa.

Criar uma classe `Agenda` para armazenar telefones. Criar um método para adicionar pessoas e um método para buscar e retornar o telefone de alguma pessoa.

Faça as classes no código abaixo, em seguida execute o exercício.

```ruby
class Pessoa
  # Resolva o exercício aqui
end

class Agenda
  # Resolva o exercício aqui
end

minha_agenda = Agenda.new
minha_agenda.adicionar(Pessoa.new("Rafael", 92345567))
minha_agenda.adicionar(Pessoa.new("Rodrigo", 99229822))
minha_agenda.adicionar(Pessoa.new("Sofia", 97213399))

minha_agenda.buscar("Rodrigo") # 99229822
minha_agenda.buscar("Alan") # ""
```

---

#### 4. DESAFIO
O desafio é sobre lista ligada. Crie uma classe `Pessoa` e a pessoa tem os atributos `nome` e `best_friend` (que é uma `Pessoa`).

Faça a classe no código abaixo, em seguida execute o exercício.

```ruby
class Pessoa
  # Resolva o exercício aqui
end

mario = Pessoa.new("Mario")
ronaldo = Pessoa.new("Ronaldo")
pedro = Pessoa.new("Pedro")
romario = Pessoa.new("Romario")

mario.best_friend = ronaldo
ronaldo.best_friend = pedro
pedro.best_friend = romario
romario.best_friend = mario

mario.best_friend.nome # Ronaldo
mario.best_friend.best_friend.nome # Pedro
mario.best_friend.best_friend.best_friend.nome # Romario
mario.best_friend.best_friend.best_friend.best_friend.nome #Mario
mario.best_friend.best_friend.best_friend.best_friend.best_friend.nome #Ronaldo
```

---

### Correção dos exercícios

- [https://rafaelbiriba.com/blog/br/programacao/aula-15B-aprendendo-a-programar-com-ruby-basico/](/blog/br/programacao/aula-15B-aprendendo-a-programar-com-ruby-basico/)
