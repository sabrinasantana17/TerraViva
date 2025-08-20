

show_debug_message("obj_botao_on: Colisão com Lina! Botão ON ID: " + string(id));

// destroi a chamine associada
if (instance_exists(self.chamine_alvo)) {
    instance_destroy(self.chamine_alvo); // destroi a chaminé ligada a este botão
    show_debug_message("obj_botao_on: Chaminé alvo " + string(self.chamine_alvo) + " DESTRUÍDA.");
} else {
    show_debug_message("AVISO (obj_botao_on): Chaminé alvo não existe para ser destruída. ID: " + string(self.chamine_alvo));
}

// destroi o proprio botao ON
instance_destroy();
show_debug_message("obj_botao_on: Botão ON " + string(id) + " DESTRUÍDO.");
