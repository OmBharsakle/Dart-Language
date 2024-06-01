// ox game make
import 'dart:io';

  List Player = List.filled(9, ' ');
  bool Check = false;

  void printBoard() 
  {
    print('${Player[0]} | ${Player[1]} | ${Player[2]}');
    print('${Player[3]} | ${Player[4]} | ${Player[5]}');
    print('${Player[6]} | ${Player[7]} | ${Player[8]}');
  }

  void CheckWinner()
  {
    // Check Row
    if (Player[0] == 'X' && Player[1] == 'X' && Player[2] == 'X')
    {
      print('Player 1 Wins');
      Check = true;
    }
    else if (Player[3] == 'X' && Player[4] == 'X' && Player[5] == 'X')
    {
      print('Player 1 Wins');
      Check = true;
    }
    else if (Player[6] == 'X' && Player[7] == 'X' && Player[8] == 'X')
    {
      print('Player 1 Wins');
      Check = true;
    }
    // Check Coulum
    else if (Player[0] == 'X' && Player[3] == 'X' && Player[6] == 'X')
    {
      print('Player 1 Wins');
      Check = true;
    }
    else if (Player[1] == 'X' && Player[4] == 'X' && Player[7] == 'X')
    {
      print('Player 1 Wins');
      Check = true;
    }
    else if (Player[2] == 'X' && Player[5] == 'X' && Player[8] == 'X')
    {
      print('Player 1 Wins');
      Check = true;
    }
    // Diagonal
    else if (Player[0] == 'X' && Player[4] == 'X' && Player[8] == 'X')
    {
      print('Player 1 Wins');
      Check = true;
    }
    else if (Player[2] == 'X' && Player[4] == 'X' && Player[6] == 'X')
    {
      print('Player 1 Wins');
      Check = true;
    }

    // Check O 
    else if (Player[0] == 'O' && Player[1] == 'O' && Player[2] == 'O')
    {
      print('Player 2 Wins');
      Check = true;
    }
    else if (Player[3] == 'O' && Player[4] == 'O' && Player[5] == 'O')
    {
      print('Player 2 Wins');
      Check = true;
    }
    else if (Player[6] == 'O' && Player[7] == 'O' && Player[8] == 'O')
    {
      print('Player 2 Wins');
      Check = true;
    }
    // Check Coulum
    else if (Player[0] == 'O' && Player[3] == 'O' && Player[6] == 'O')
    {
      print('Player 2 Wins');
      Check = true;
    }
    else if (Player[1] == 'O' && Player[4] == 'O' && Player[7] == 'O')
    {
      print('Player 2 Wins');
      Check = true;
    }
    else if (Player[2] == 'O' && Player[5] == 'O' && Player[8] == 'O')
    {
      print('Player 2 Wins');
      Check = true;
    }
    // Diagonal
    else if (Player[0] == 'O' && Player[4] == 'O' && Player[8] == 'O')
    {
      print('Player 2 Wins');
      Check = true;
    }
    else if (Player[2] == 'O' && Player[4] == 'O' && Player[6] == 'O')
    {
      print('Player 2 Wins');
      Check = true;
    }
  }

  void MainGame()
  {
    int i, n;

  for (i = 0; i < 9; i++) 
  {

    printBoard();
    CheckWinner();

    if (Check == true)
    {
      Player = List.filled(9, ' ');
      Check=false;
      print('--------New Game--------');
      MainGame();
    }

    if (i % 2 == 0) 
    {
      stdout.write("Enter The Number : ");
      n = int.parse(stdin.readLineSync()!);
      n--;

      if (Player[n] == 'X' || Player[n] == 'O') 
      {
        print('Invalid move');
        do
        {
          stdout.write("Enter The Number Again : ");
          n = int.parse(stdin.readLineSync()!);
          n--;
        }
        while(Player[n] != ' ');
        Player[n] = 'O';
        // printBoard();
      } 
      else 
      {
        Player[n] = 'O';
        // printBoard();
      }
    } 
    else 
    {
      stdout.write("Enter The Number : ");
      n = int.parse(stdin.readLineSync()!);
       n--;

      if (Player[n] == 'X' || Player[n] == 'O') 
      {
        print('Invalid move');
        do
        {
          stdout.write("Enter The Number Again : ");
          n = int.parse(stdin.readLineSync()!);
           n--;
        }
        while(Player[n] != ' ');
        Player[n] = 'X';
        // printBoard();
      } 
      else 
      {
        Player[n] = 'X';
        // printBoard();
      }
    }
  }
  }

void main() 
{
  MainGame();
}