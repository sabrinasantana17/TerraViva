// pegando os inputs do usuário :)

up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);

// aplicando os inputs à velocidade
// resultado: 0, -1 ou 1

velv = (down - up) * vel;

//velocidade horizontal
velh = (right - left) * vel;