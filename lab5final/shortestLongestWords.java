public class shortestLongestWords {   
   
  public static void main(String[] args){     
      String lineToTranslate = "this code searches for the shortest and longest words";    
      String lineToWord = "";
      String shortest = "";
      String longest = ""; 
      String[] wordsInLine = new String[50];    
      int length = 0; 
      String temp = "";
      String last = "";
    
    // splits the line into individual words (string array)
      for(int i = 0; i < lineToTranslate.length(); i++){     
          if(lineToTranslate.charAt(i) != ' '){    
              lineToWord = lineToWord + lineToTranslate.charAt(i);    
          }    
          else{      
              wordsInLine[length] = lineToWord;        
              length++;      
              lineToWord = "";    
          }    
      }                
      shortest = longest = wordsInLine[0];
      
      //counts through the string array to identify the shortest and longest words
      for(int i = 0; i < length; i++){    
          if(wordsInLine[i].length() < shortest.length())    
              shortest = wordsInLine[i];    
          if(wordsInLine[i].length() > longest.length())    
              longest = wordsInLine[i];    
      }    
      //prints the shortest/longest words
        System.out.println("Shortest word: " + shortest);    
        System.out.println("Longest word: " + longest);
        String str[] = new String[length];
        
        // sets a new string array to the wordsInLine array for the alphabetical
        // order task
        for(int i = 0; i < length; i++)
        {
            str[i] = wordsInLine[i];
        }
        
        //compares the words in the str array to see which are first & last
        for (int i = 0; i < length; i++) 
        {
            for (int j = i + 1; j < length; j++) { 
                if (str[i].compareTo(str[j])>0) 
                {
                    temp = str[i];
                    str[i] = str[j];
                    str[j] = temp;
                    
                }
            }
        }
        //prints the alphabetically first and last words
        String first = str[0];
        last = str[str.length - 1];
        System.out.print("Alphabetically first & last: " + first + " & " + last);
    }  
  }  