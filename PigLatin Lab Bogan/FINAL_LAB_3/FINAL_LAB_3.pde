String[] s;

void setup()
{
  // Creates a string array to translate individual segments of the imported string
  // to piglatin.
  String[] s = loadStrings("input.txt");
  String[] lineToPigLatin = new String[s.length];
  for (int i = 0; i < s.length; i+=1) {
    lineToPigLatin[i] = (lineToPigLatin(s[i]));
   }
}

// Creates the boolean of whether or not a certain character is a vowel.
boolean isVowel(char c) {
  if(c == 'a'|| c=='e'|| c=='i'|| c== 'o'|| c=='u' ||
    c== 'A' || c == 'E' || c== 'I' || c== 'O' || c=='U') {
    return true;
  } else {
    return false;
}
}

// Creates the boolean of whether or not a certain character is a consonant.
boolean isConsonant(char c){
  if(c == 'a'|| c=='e'|| c=='i'|| c== 'o'|| c=='u' ||
    c== 'A' || c == 'E' || c== 'I' || c== 'O' || c=='U') {
      return false;
    } else {
      return true;
    }
}

// Creates the boolean of whether or not a certain character is Y. Included to translate two letter words with "Y" at the end.
boolean isY(char c){
  if(c == 'y') {
      return true;
    } else {
      return false;
    }
}

// Splits the line of string into words in order to translate each individually.
// 'answer' produces the full translation. Answer is printed & 
// saved to an outside file, "output.txt".

String lineToPigLatin(String s) {
  String[] lineToPigLatin = split(s, " ");
  String answer;
  answer = "";
  for (int i = 0; i < s.length(); i+=1) {
  answer += (wordToPigLatin(lineToPigLatin[i]) + " ");
  println(answer);
  saveStrings("output.txt", answer.split(" "));
  }
  return "";
}
