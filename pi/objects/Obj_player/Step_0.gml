//pegando os inputs do usuário
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);

//aplicando os inputs a velocidade
velv =(down - up) * vel;

//fazendo a velocidade horizontal
velh = (right - left) * vel;