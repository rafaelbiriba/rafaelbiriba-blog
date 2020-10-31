---
layout: post
title: "Aula 17B - Aprendendo a programar com Ruby: O Básico para iniciantes"
excerpt: "Material da aula 17B do curso aprendendo a programar com ruby, o básico para iniciantes. Nunca é tarde para começar a programar! Eu criei um curso gratuito, fácil e didático voltado para iniciantes. Confira mais informações aqui nessa publicação."
category: [br, programacao]
lang: br
tags: [programação, tecnologia, curso, ruby, iniciantes]
comments: true
share: true
ads: true
---

![](/blog/images/curso_ruby_basico/banner-curso-ruby-17B.jpg)

> :warning: Material da aula 17.B! Veja mais informações sobre o curso e a lista completa das aulas em: [http://cursoprogramacao.rafaelbiriba.com/](http://cursoprogramacao.rafaelbiriba.com/) :warning:

# 17.B. Revisão de conteúdo - Correção dos exercícios

Essa é a segunda parte da aula de revisão de conteúdo, com a correção comentada dos exercícios.
Não deixe de tentar resolver os exercícios da aula e investir algum tempo estudando mais sobre o assunto.

### Vídeo da aula

- []()

### Exercícios

- [https://rafaelbiriba.com/blog/br/programacao/aula-17A-aprendendo-a-programar-com-ruby-basico/](/blog/br/programacao/aula-17A-aprendendo-a-programar-com-ruby-basico/)

### Correção dos exercícios

#### 1.

```ruby
class Carro
  attr_reader :km_rodados
  def initialize(modelo, cor, km_rodados)
    @modelo = modelo
    @cor = cor
    @km_rodados = km_rodados
  end

  def detalhes
    "#{@modelo} #{@cor}"
  end

  def precisa_trocar_oleo?
    if km_rodados > 10000
      return true
    else
      return false
    end
  end

  def precisa_trocar_pneu?
    if km_rodados > 50000
      return true
    else
      return false
    end
  end
end

carro_preto = Carro.new("corsa", "preto", 32000)
carro_preto.detalhes # "corsa preto"
carro_preto.precisa_trocar_oleo? # true
carro_preto.precisa_trocar_pneu? # false

carro_azul = Carro.new("fusca", "azul", 9000)
carro_azul.detalhes # "fusca azul"
carro_azul.precisa_trocar_oleo? # false
carro_azul.precisa_trocar_pneu? # false

carro_branco = Carro.new("palio", "branco", 51000)
carro_branco.detalhes # "palio branco"
carro_branco.precisa_trocar_oleo? # true
carro_branco.precisa_trocar_pneu? # true
```

#### 2.

```ruby
# Classe Carro do exercício #1
class Carro
  attr_reader :km_rodados
  def initialize(modelo, cor, km_rodados)
    @modelo = modelo
    @cor = cor
    @km_rodados = km_rodados
  end

  def detalhes
    "#{@modelo} #{@cor}"
  end

  def precisa_trocar_oleo?
    if km_rodados > 10000
      true
    else
      false
    end
  end

  def precisa_trocar_pneu?
    if km_rodados > 50000
      true
    else
      false
    end
  end
end

class Oficina
  attr_accessor :carros

  def initialize
    @carros = []
  end

  def adicionar_carro(carro)
    @carros << carro
  end

  def listar_todos_carros
    resultado = []
    @carros.each do |carro|
      resultado << carro.detalhes
    end
    resultado
  end

  def listar_carros_troca_oleo
    resultado = []
    @carros.each do |carro|
      if carro.precisa_trocar_oleo?
        resultado << carro.detalhes
      end
    end
    resultado
  end

  def listar_carros_troca_pneu
    resultado = []
    @carros.each do |carro|
      if carro.precisa_trocar_pneu?
        resultado << carro.detalhes
      end
    end
    resultado
  end
end

oficina = Oficina.new
oficina.adicionar_carro(Carro.new("corsa", "preto", 32000))
oficina.adicionar_carro(Carro.new("fusca", "azul", 9000))
oficina.adicionar_carro(Carro.new("palio", "branco", 51000))

oficina.listar_todos_carros #["corsa preto", "fusca azul", "palio branco"]
oficina.listar_carros_troca_oleo #["corsa preto", "palio branco"]
oficina.listar_carros_troca_pneu #["palio branco"]
```

#### 3.

```ruby

# arquivo veiculo.rb
class Veiculo
  attr_reader :peso, :rodas

  def initialize(peso, rodas)
    @peso = peso
    @rodas = rodas
  end
end
```

```ruby
veiculo = Veiculo.new(100000, 12)
veiculo.rodas # 12
veiculo.peso # 100000kg
veiculo.carga # NoMethodError, pois não deve estar disponível Veiculo
veiculo.cilindradas # NoMethodError, pois não deve estar disponível Veiculo
veiculo.lugares # NoMethodError, pois não deve estar disponível Veiculo
```

```ruby
# arquivo caminhao.rb
require_relative "veiculo"

class Caminhao < Veiculo

  def initialize
    super(12000, 8)
  end

  def carga
    "arroz"
  end
end
```

```ruby
caminhao = Caminhao.new
caminhao.rodas # 8
caminhao.peso # 12000kg
caminhao.carga # arroz
caminhao.cilindradas # NoMethodError, pois não deve estar disponível para Caminhao
caminhao.lugares # NoMethodError, pois não deve estar disponível para Caminhao
```

```ruby
# arquivo moto.rb
require_relative "veiculo"

class Moto < Veiculo

  def initialize
    super(250, 2)
  end

  def cilindradas
    "200cc"
  end
end
```

```ruby
moto = Moto.new
moto.rodas # 2
moto.peso # 250kg
moto.cilindradas # 200cc
moto.carga # NoMethodError, pois não deve estar disponível para Moto
moto.lugares # NoMethodError, pois não deve estar disponível para Moto
```

```ruby
# arquivo carro.rb
require_relative "veiculo"

class Carro < Veiculo

  def initialize
    super(1100, 4)
  end

  def lugares
    5
  end
end
```

```ruby
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
  class Forca
    def initialize(palavra_correta)
      @palavra_correta = palavra_correta.split("")
      @erros = 0
      @palavra_adivinhada = Array.new(@palavra_correta.size)
    end

    def jogar
      while true
        puts "Digite uma letra:"
        letra_digitada = gets.chomp

        if acertou_letra?(letra_digitada)
          puts "#{@palavra_adivinhada}"
        else
          @erros += 1
          puts "Você cometeu um erro. (#{@erros} de 6)"
        end

        if fim_de_jogo?
          break
        end
      end
    end

    def acertou_letra?(letra_digitada)
      acertos = false
      @palavra_correta.each_with_index do |letra_correta, index|
        if letra_correta == letra_digitada
          acertos = true
          @palavra_adivinhada[index] = letra_digitada
        end
      end
      acertos
    end

    def fim_de_jogo?
      if ganhou?
        puts "Você ganhou!"
        return true
      elsif perdeu?
        puts "Você perdeu!"
        return true
      end
    end

    def ganhou?
      @palavra_correta == @palavra_adivinhada
    end

    def perdeu?
      @erros == 6
    end
  end

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
