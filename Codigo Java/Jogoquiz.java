/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jogoquiz;

import java.util.Scanner;
import static jogoquiz.quiz.gerarRanking;




/**
 *
 * @author internet
 */
public class Jogoquiz {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        
        
        
        Scanner sc = new Scanner(System.in);
        jogador jogue = new jogador();
        System.out.println("Digite seu nome para começar o jogo: "); 
        jogue.registrarNome(sc.next());
        System.out.println("");    
        quiz tiago = new quiz(jogue);                  
        
        
        tiago.responder();
        tiago.salvarPontuacao();
        tiago.exibirPontuacao();
        gerarRanking();
        
    }
    
}
