/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jogoquiz;

import java.sql.Statement;
import java.util.Date;
import static jogoquiz.conexao.conectar;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;
import static jogoquiz.conexao.con;
import static jogoquiz.conexao.fecharConexao;
import static jogoquiz.conexao.status;

/**
 *
 * @author internet
 */
public class quiz {
   private Date datajogo;
   private int pontos;
   private jogador player;
  String nome;
  
  
  public quiz(){  
  }
  
  public quiz(jogador cara){
      player = cara;
      
  }
   public void responder (){ 
      
       
       
       
       try{       
           
           
          Scanner sc = new Scanner(System.in);
       
           
       conectar();
       
       this.pontos = 0;
       
       String query = "Select * from questao";
       Statement resultado ;
       
       resultado = con.createStatement();
       
       ResultSet rs = resultado.executeQuery(query);
       
       String resposta;
       
       fecharConexao();
       
       int i=0;
       while ( rs.next() ){
            i++;
           System.out.println("("+i+")- " + rs.getString("nomeQuestao"));
           System.out.println("(A): " + rs.getString("A"));
           System.out.println("(B): " + rs.getString("B"));
           System.out.println("(C): " + rs.getString("C"));
           System.out.println("(D): " + rs.getString("D"));
           System.out.println("(E): " + rs.getString("E"));
           
           resposta = sc.next();
           
           if(resposta.equalsIgnoreCase(rs.getString("resposta"))){
               this.pontos +=1;
               
           }else{
               this.pontos+=0;
           }
           System.out.println("");
       }
       
       
       }catch(SQLException erro){
            Logger.getLogger(conexao.class.getName()).log(Level.SEVERE, null, erro);
            status = ("STATUS:" + erro.getMessage());
           
       }
       
       
       
       
   
   }
   
  public void exibirPontuacao (){
      System.out.println("Parabens " + this.player.getNome()  +" seu total de pontos é: " + this.pontos );
  
  }
  
  public void salvarPontuacao (){
    try{
      conectar();
      String query = "insert into quiz (nomeJogador, pontuacao) values ( '" + this.player.getNome() +  "'," +  this.pontos + " )";
      
      PreparedStatement insert = con.prepareStatement(query);
      
      insert.execute();
    
    
      fecharConexao();
    }catch(SQLException erro){
        
    Logger.getLogger(conexao.class.getName()).log(Level.SEVERE, null, erro);
    
    }
  }
  
  public static void gerarRanking () {
      int i = 1;
  try{  
  conectar();
  String query = "select * from quiz order by pontuacao desc";
  
  Statement rst = con.createStatement();
  
  ResultSet resultado = rst.executeQuery(query);
  
      System.out.println("---------- RANKING GERAL ------------");
  while(resultado.next()){
      
      System.out.println( i + ":" + resultado.getString("nomeJogador") + " Pontos: " + resultado.getString("pontuacao"));
      if(i == 5){break;}
      i++;
  }
  
      }catch(SQLException erro){
          Logger.getLogger(conexao.class.getName()).log(Level.SEVERE, null, erro);
    }
  }
}
