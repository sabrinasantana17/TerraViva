// Evento Create para obj_chamine (ou obj_chamine_ativada)

// Define o sprite inicial da chaminé
sprite_index = spr_chamine_ativada; 

// Indica que esta chaminé está ativa (soltando fumaça)
// Esta variável será lida pelo botão para saber se pode desativá-la
ativada = true; 

show_debug_message("Chaminé criada: " + string(id));