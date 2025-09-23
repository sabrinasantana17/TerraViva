show_debug_message("obj_botao_on: Colisão com Lina! Botão ON ID: " + string(id));

// Destrói a chaminé associada
if (instance_exists(self.chamine_alvo)) {
    instance_destroy(self.chamine_alvo); // Destrói a chaminé ligada a este botão
    
    // LINHA ADICIONADA: Incrementa o contador de chaminés desativadas
    global.chamines_desativadas_total += 1;
    
    show_debug_message("Chaminé desativada! Total: " + string(global.chamines_desativadas_total) + " de 11.");
} else {
    show_debug_message("AVISO (obj_botao_on): Chaminé alvo não existe para ser destruída. ID: " + string(self.chamine_alvo));
}

// Destrói o próprio botão ON
instance_destroy();
show_debug_message("obj_botao_on: Botão ON " + string(id) + " DESTRUÍDO.");