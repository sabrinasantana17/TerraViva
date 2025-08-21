//Iniciando o meu primeiro estado
estado_idle = new estado();

//Iniciando o estado walk
estado_walk = new estado();


#region estado_idle
//Meu estado idle precisa de um inicia
estado_idle.inicia = function(){
	
//definindo a sprite atual com base na direção que eu to olhando	
var _sprite = define_sprite(dir, spr_player_idle_side, spr_player_idle_front, spr_player_idle_back);

//Ajustando a sprite
sprite_index = _sprite;
 
//Garantindo que a animação começa do primeiro frame
image_index = 0;
}

estado_idle.roda = function(){
//Achando a condição para eu sair desse estado


//Se eu estiver em movimento, então eu vou para o estadon de walk
if (up xor down or left xor right){
troca_estado(estado_walk);
}
}
#endregion

#region estado walk
estado_walk.inicia = function()
{
	
	dir = (point_direction(0, 0, right - left, down - up) div 90);
	
	//defindo a sprite
	
//Configurando a sprite
sprite_index = define_sprite(dir, spr_player_walk_side, spr_player_walk_front, spr_player_walk_back);


//Começando a animação do começo
image_index = 0;

}

estado_walk.roda = function(){
	
	dir = (point_direction(0, 0, velh, velv) div 90);


//Condição paraa sair do estado
//Se eu estou parado eu vou paara o estado de idle

//ajustando o lado que ele olha
if (velh != 0){
image_xscale = sign(velh);
}

//definindo a sprite
sprite_index = define_sprite(dir, spr_player_walk_side, spr_player_walk_front, spr_player_walk_back);

//movendo
velv =(down - up) * vel;

//fazendo a velocidade horizontal
velh = (right - left) * vel;
if (velh == 0 && velv == 0){

troca_estado(estado_idle);
}


}

#endregion

//iniciar variáveis

#region iniciando variáveis
//controles
up = noone;
down = noone;
left = noone;
right = noone;

//Variáveis de movimento
//iniciando parado
velh = 0;
velv = 0;

//Velocidade do jogador
vel = 8;

//controlando a direção que o player esta olhando
dir = 0;

#endregion

//Iniciando minha máquina de estados
inicia_estado(estado_idle);

//variável para passar de fase
ecopontuacao = 0


