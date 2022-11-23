SuperPower.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?

# Sonic
sonic = User.create!(name: 'Sonic', email: 'sonic@lewagon.com', password: '123123', img: '')
SuperPower.create!(name: 'Super Atletismo', description: 'O usuário é naturalmente mais acrobático do que outros de sua espécie porque suas capacidades vão além do nível natural, o que o torna imensamente mais rápido, com um senso maior de equilíbrio e várias outras habilidades acrobáticas do que os membros normais de sua raça podem alcançar por qualquer método de treinamento, permanecendo assim com pouca ou nenhuma manutenção.',
  price: 3700.00, user: sonic)

# Goku
goku = User.create!(name: 'Goku', email: 'goku@lewagon.com', password: '123123', img: '')
SuperPower.create!(name: 'Teletransporte', description: 'O usuário é capaz de fazer com que seu corpo simplesmente desapareça do lugar onde está e ressurja em uma nova localização desejada, realizando uma espécie de "movimento instantâneo". Geralmente, ele pode fazer com que essa capacidade afete qualquer tipo de matéria e energia, podendo teletransportar não só a si mesmo, mas também a outros indivíduos, objetos e, em alguns casos, corpos não-físicos. Em combate, o usuário pode combinar seu teletransporte com diversas formas de ataque e defesa, criando um estilo de luta altamente veloz, preciso e estratégico.',
user: goku, price: 25.00)
SuperPower.create!(name: 'Modo Deus', description: 'O usuário é capaz de entrar em um estado divino, adquirindo uma forma que lhe concede habilidades, poderes, atributos e traços de uma divindade com poder ilimitado e tornando-o quase implacável e imparável. Com isso, suas capacidades e poderes transcendem seus próprios limites físicos, mentais, espirituais e etc., além de poder ter virtualmente qualquer poder sobrenatural, a ponto de torná-lo semi-onipotente enquanto essa forma permanecer ativa.
  ', price: 15000.00, user: goku)

# Thor
thor = User.create!(name: 'Thor', email: 'thor@lewagon.com', password: '123123', img: '')
SuperPower.create!(name: 'Mjölnir', description: 'O martelo de Thor possui grandes habilidades que permitem a quem o usa, entre outras coisas, voar pelo ar ou invocar poderosos relâmpagos que abalam os inimigos
  ', user: thor, price: 4200.00)

# Super-man
sp = User.create!(name: 'Super-man', email: 'superman@lewagon.com', password: '123123', img: '')
SuperPower.create!(name: 'Visão Raio-x', description: 'Os olhos do usuário emitem uma frequência de raios que produz um efeito de transparência (ou seja, raio-x) para visualizar através ou dentro de objetos sólidos.
', user: sp, price: 2500.00)


# Deadpool
deadpool = User.create!(name: 'Deadpool', email: 'deadpool@lewagon.com', password: '123123', img: '')
SuperPower.create!(name: 'Imortalidade', description: 'O usuário possui um tempo de vida ilimitado, sendo que ele não pode morrer por circunstância alguma, não envelhecer e regenerar qualquer tipo de dano físico',
  user: deadpool, price: 50000.00)
SuperPower.create!(name: 'Supressão de dor', description: 'O usuário é capaz de resistir, neutralizar ou mesmo ser imune à dor. Os usuários em resumo são incapazes de sentir dor ou são altamente resistentes a qualquer tipo de dor física, permitindo que pensem com clareza e continuem a se mover apesar de uma lesão grave. Os usuários podem pensar com clareza, continuar a se mover, ignorar a tortura e geralmente funcionar em situações em que a dor incapacitaria uma pessoa normal, podendo até mesmo imunizar a sensibilidade a dor de pessoas.
    ', user: deadpool, price: 5000.00)

# Mulher-Maravilha
mm = User.create!(name: 'Mulher-Maravilha', email: 'mulhermaravilha@lewagon.com', password: '123123', img: '')
SuperPower.create!(name: 'Laço da verdade', description: 'O Laço da Verdade (ou em inglês Lasso of Truth), é a principal ferramenta e arma da Mulher-Maravilha. É uma mágica lança de ouro que força qualquer pessoa a capturar para obedecer e dizer a verdade.',
user: mm, price: 1200.00)

# Wanda
wanda = User.create!(name: 'Wanda', email: 'wanda@lewagon.com', password: '123123', img: '')

SuperPower.create!(name: 'Telecinese
  ', description: 'O usuário é capaz de mover, levitar ou destruir qualquer coisa com o poder da mente, além de poder, por exemplo, causar impacto com ondas telecinéticas, causar asfixia em oponentes ou se proteger de grandes impactos.
  ', user: wanda, price: 7500.00)

SuperPower.create!(name: 'Manipulação do tempo', description: 'O usuário pode criar, moldar, mover, controlar, interagir e manipular o tempo, o progresso contínuo indefinido da existência e eventos que ocorrem em uma sucessão aparentemente irreversível do passado, através do presente, para o futuro, na área geral ou para um específico alvo de várias maneiras, com os atos mais básicos girando em torno de acelerá-lo, desacelerá-lo, pará-lo e até mesmo retrocedê-lo ou girá-lo. O alcance da área afetada é proporcional ao domínio do usuário, com aqueles em níveis mais altos sendo capazes de afetar todo o contínuo espaço-tempo.
  ', user: wanda, price: 9700.00)

# Joker
joker =  User.create!(name: 'Joker', email: 'joker@lewagon.com', password: '123123', img: '')

SuperPower.create!(name: 'Gênio Tático', description: 'O usuário é descaradamente um gênio em elaborar estratégias e táticas, capaz de ver através de todos os ângulos/informações/padrões e ter percepções de qualquer assunto, conflito, condição, ambiente, etc. Isso dá a eles a capacidade de criar planos e ações que irão garantir vitória e tomar as decisões estratégicas e táticas mais sábias e necessárias para curto e longo prazo, exatamente no momento certo. Eles podem considerar todos os efeitos e resultados, antecipar todos os obstáculos, aproveitar todas as oportunidades, ajustar-se efetivamente a qualquer situação, manipular todas as circunstâncias para obter seus benefícios ideais e tirar o máximo proveito de tudo ao seu redor para atingir seus objetivos.
  ', user: joker, price: 4500.00)

  SuperPower.create!(name: 'Instinto assassino', description: 'O usuário possui um poder mortal que lhes permite ser a "máquina de morte". Eles têm instintos para matar com qualquer meios e formas mais eficazes possíveis, usando qualquer coisa à mão para fazê-lo e não têm problemas mentais antes, durante ou após o massacre. Eles são, em resumo, assassinos frios e impiedosos. Eles também podem ter uma aura assassina, induzindo medo em seus adversários.
    ', user: joker, price: 700.00)
