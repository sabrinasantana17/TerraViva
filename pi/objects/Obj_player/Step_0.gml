//pegando os inputs do usuário
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);

//aplicando os inputs a velocidade


//ajustando a direção com base na direção que ele tá indo


//Rodando a minha máquina de estados 
roda_estado();

if ecopontuacao = 100{
room_goto_next()
}



// Distância máxima para poder interagir
var dist_max = 400; // ajuste conforme seu jogo

// Procura a lixeira mais próxima
var lix = instance_nearest(x, y, obj_agua);

// Verifica se existe uma lixeira e se o jogador está próximo
if (lix != noone) {
    if (point_distance(x, y, lix.x, lix.y) <= dist_max) {
      
        // Se o jogador apertar a tecla E
        if (keyboard_check_pressed(ord("E"))) {
            balde_agua = 4; // limpa a variável
            show_debug_message("Jogador e!");
        }
    }
}