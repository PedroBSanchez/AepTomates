%Estado do tomate - Estado > 75 MADURO e Estado <= 75 Verde


iniciarColheita(Inicio, Fim) :- verificarBateria(Bateria, Inicio, Fim),
    							processoDeColheita(E).
    							
    							
    							
   

    
verificarBateria(Bateria, Inicio, Fim) :- (
                                          Bateria > (Fim - Inicio), write('Bateria suficiente');
                                          (Bateria < (Fim - Inicio), write('Bateria insuficiente, recarregue'), exit)
                                          ).
								

processoDeColheita(E) :- 
    				  avancar(E),
    				  identificartomate(E),
    				  verificarestadotomate(E),
    				  verificarseexistemtomates(E),
    
    
    
    
    
    
verficarEstaDoTomate(E) :- (
                           E > 75, colher(E);
                           (E <= 75, write('Tomate Verde')),
                           contabilizar(E),
                           ). 
    				  
verificarSeExistemTomates(E) :- (  
                                E > 0, trocarTrilha(E);
                                E = 0, encerrarColheita(E)
                                ).
    
    
