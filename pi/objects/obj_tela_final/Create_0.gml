// Variáveis que vão receber os dados da fase anterior
background_image = noone; // Variável para a imagem de fundo (sprite)
text_message = "";       // Variável para a mensagem de texto
next_room = noone;       // Variável para a próxima sala

// Desativa todas as outras instâncias para "pausar" o jogo
// Isso impede que o jogador se mova ou que outros objetos continuem funcionando
instance_deactivate_all(true);