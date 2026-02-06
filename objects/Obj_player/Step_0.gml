x -= vel_x * direcao;

// colidindo com a parede direita
if (x >= room_width - 32){
	x = room_width - 32;
	pode_mudar = true;
}
//colidindo com a parede esquerda
if (x <= 32){
	x = 32;
	pode_mudar = true;
}

//trocar de direção
if (keyboard_check(vk_space) and pode_mudar){
	direcao *= -1;
	pode_mudar = false;
}