---
layout: post
title: "Aula 17A - Aprendendo a programar com Ruby: O Básico para iniciantes"
excerpt: "Material da aula 17A do curso aprendendo a programar com ruby, o básico para iniciantes. Nunca é tarde para começar a programar! Eu criei um curso gratuito, fácil e didático voltado para iniciantes. Confira mais informações aqui nessa publicação."
category: [br, programacao]
lang: br
tags: [programação, tecnologia, curso, ruby, iniciantes]
comments: true
share: true
ads: true
---

![](/blog/images/curso_ruby_basico/banner-curso-ruby-17A.jpg)

> :warning: Material da aula 17.A! Veja mais informações sobre o curso e a lista completa das aulas em: [http://cursoprogramacao.rafaelbiriba.com/](http://cursoprogramacao.rafaelbiriba.com/) :warning:

# 17.A. Revisão de conteúdo

Essa é uma aula de revisão de conteúdo. Vou mostrar rapidamente tudo que foi ensinado nas últimas aulas, além dos exercícios um pouco mais complexos.
Não deixe de tentar resolver os exercícios da aula e investir algum tempo estudando mais sobre o assunto.

### Vídeo da aula

- []()

### Conteúdo da aula

- Revisão do conteúdo das aulas anteriores

#### Métodos

```ruby
def soma(a,b)
  a + b
end

soma(1,3) # 4
```

#### Classes e Instâncias

```ruby
class Pizza
  def self.valor
    30
  end

  def tempo_de_preparo
    10
  end
end

Pizza.valor # 30
minha_pizza = Pizza.new
minha_pizza.tempo_de_preparo # 10
```

```ruby
class Carro
  def combustivel
    "gasolina"
  end
end

class Eletrico < Carro
  def combustivel
    "eletricidade"
  end

  def nome
    "Tesla"
  end
end

Carro.new.combustivel # gasolina
Carro.new.nome # NoMethodError

Eletrico.new.combustivel # eletricidade
Eletrico.new.nome # Tesla
```

```ruby
  class Teste
    attr_accessor :a
    attr_writer :b
    attr_reader :c
  end

teste = Teste.new
teste.a = 1
teste.a # 1

teste.b = 1
teste.b # NoMethodError

teste.c = 1 # NoMethodError
teste.c # nil
```

### Exercícios

#### 1.
Implementar uma classe `Carro` que inicializa com o modelo, cor, km rodados. A classe carro deve expor os métodos:

- `detalhes` (que retorna modelo e cor do carro)
- `km_rodados` (que retorna os km rodados pelo carro)
- `precisa_trocar_oleo?` (retorna `true` se os `km_rodados` forem `>10000` senão, `false`)
- `precisa_trocar_pneu?` (retorna `true` se os `km_rodados` forem `>50000` senão, `false`)

Segue o código para teste abaixo:

```ruby
carro_preto = Carro.new("corsa", "preto", 32000)
carro_preto.detalhes # "corsa preto"
carro_preto.km_rodados # 32000
carro_preto.precisa_trocar_oleo? # true
carro_preto.precisa_trocar_pneu? # false

carro_azul = Carro.new("fusca", "azul", 9000)
carro_azul.detalhes # "fusca azul"
carro_preto.km_rodados # 9000
carro_azul.precisa_trocar_oleo? # false
carro_azul.precisa_trocar_pneu? # false

carro_branco = Carro.new("palio", "branco", 51000)
carro_branco.detalhes # "palio branco"
carro_preto.km_rodados # 51000
carro_branco.precisa_trocar_oleo? # true
carro_branco.precisa_trocar_pneu? # true
```

#### 2.
Aproveitando o exercício **#1**, crie uma classe `Oficina`. Essa classe vai ter uma lista para armazenar os carros (utilize a classe `Carro` do exercício anterior.)
A `Oficina` precisa expor o método `listar_todos_carros`, `listar_carros_troca_oleo` e `listar_carros_troca_pneu`.
Você precisa criar um método `adicionar_carro` para adicionar os carros na oficina.

Segue o código para teste abaixo:

```ruby
oficina = Oficina.new
oficina.adicionar_carro(Carro.new("corsa", "preto", 32000))
oficina.adicionar_carro(Carro.new("fusca", "azul", 9000))
oficina.adicionar_carro(Carro.new("palio", "branco", 51000))

oficina.listar_todos_carros #["corsa preto", "fusca azul", "palio branco"]
oficina.listar_carros_troca_oleo #["corsa preto", "palio branco"]
oficina.listar_carros_troca_pneu #["palio branco"]
```

#### 3.
Implementar uma classe `Veiculo` que inicializa e expõe os métodos `peso` e `rodas`.
Implementar as classes `Caminhao`, `Moto`, `Carro` que estendem da classe `Veiculo`, onde:

- `Caminhao`: Possui 8 rodas e 12000kg. Essa classe precisa implementar o método `carga` e retornar `arroz`
- `Moto`: Possui 2 rodas e 250kg. Essa classe precisa implementar o método `cilindradas` e retornar `200cc`
- `Carro`: Possui 4 rodas e 1100kg. Essa classe precisa implementar o método `lugares` e retornar `5`

OPCIONAL: Salvar as classes em arquivos separados (exemplo, `Veiculo` em `veiculo.rb`, `Carro` em `carro.rb`) e utilizar o `require_relative`

Segue o código para teste abaixo:

```ruby

veiculo = Veiculo.new(100000, 12)
veiculo.rodas # 12
veiculo.peso # 100000kg
veiculo.carga # NoMethodError, pois não deve estar disponível Veiculo
veiculo.cilindradas # NoMethodError, pois não deve estar disponível Veiculo
veiculo.lugares # NoMethodError, pois não deve estar disponível Veiculo

caminhao = Caminhao.new
caminhao.rodas # 8
caminhao.peso # 12000kg
caminhao.carga # arroz
caminhao.cilindradas # NoMethodError, pois não deve estar disponível para Caminhao
caminhao.lugares # NoMethodError, pois não deve estar disponível para Caminhao

moto = Moto.new
moto.rodas # 2
moto.peso # 250kg
moto.cilindradas # 200cc
moto.carga # NoMethodError, pois não deve estar disponível para Moto
moto.lugares # NoMethodError, pois não deve estar disponível para Moto

carro = Carro.new
carro.rodas # 4
carro.peso # 1100kg
carro.lugares # 5
carro.carga # NoMethodError, pois não deve estar disponível para Carro
carro.cilindradas # NoMethodError, pois não deve estar disponível para Carro
```

#### 4. DESAFIO
Implementar um jogo da forca. Forca é um jogo onde uma palavra é escolhida em segredo, e o jogador tem 6 chances de acertar a palavra, tentando adivinhar letra por letra.

Nesse exercício, você deve criar uma classe `Forca` que inicialize com a palavra escolhida para o jogo.

Você deve implementar um método `jogar` para iniciar o jogo e receber (perguntar ao jogador) as letras a cada jogada.

Quando o número de erros forem igual a 6, o jogo acaba com a mensagem `Você perdeu!`

Se a palavra for descoberta, o jogo acaba com a mensagem `Você ganhou!`

OPCIONAL: Não precisa guardar a lista de letras digitadas. Se o jogador digitar a mesma letra, e ela estiver errada, contar como um novo erro.

DICA: Usar `gets` para receber as letras do jogador.

DICA 2: Utilizar `while` para manter o jogo rodando, até a palavra for acertada ou o jogador errar 6 vezes.

DICA 3: `"cavalo".size` retorna o tamanho da palavra, ou seja `6`

DICA 4: `Array.new(6)` cria um array vazio com `6` posições `[nil, nil, nil, nil, nil, nil]`

```ruby
  jogo = Forca.new("cavalo")
  jogo.jogar
  # Digite uma letra: z
  # Você cometeu um erro. (1 de 6)
  # Digite uma letra: c
  # ["c", nil, nil, nil, nil, nil]
  # Digite uma letra: u
  # Você cometeu um erro. (2 de 6)
  # Digite uma letra: a
  # ["c", "a", nil, "a", nil, nil]
  # Digite uma letra: u
  # Você cometeu um erro. (3 de 6)
  # Digite uma letra: v
  # ["c", "a", "v", "a", nil, nil]
  # Digite uma letra: l
  # ["c", "a", "v", "a", "l", nil]
  # Digite uma letra: o
  # ["c", "a", "v", "a", "l", "o"]
  # Você ganhou!
```

---

### Correção dos exercícios

- [https://rafaelbiriba.com/blog/br/programacao/aula-17B-aprendendo-a-programar-com-ruby-basico/](/blog/br/programacao/aula-17B-aprendendo-a-programar-com-ruby-basico/)
