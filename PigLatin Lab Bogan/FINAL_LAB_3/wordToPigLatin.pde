String wordToPigLatin(String s) {
  // Case: Adds "yay" at the ends of words that begin with vowels.
  for (int i = 0; i < s.length(); i+=1) {
    if (isVowel(s.charAt(0))) {
      return (s + "yay");
    }
  }
  
  // Case: Translates words with a single consonant in the front.
  for (int i = 0; i < s.length(); i+=1) {
    if (isConsonant(s.charAt(0)) && (isVowel(s.charAt(1)) || isY(s.charAt(1)))) {
      return (s.substring(1) + (s.charAt(0)) + "ay");
    }
  }
  // Case: Translates words with two consonants in the front.
    for (int i = 0; i < s.length(); i+=1) {
    if (isConsonant(s.charAt(0)) && isVowel(s.charAt(2))) {
      return (s.substring(2) + (s.charAt(0)) + (s.charAt(1)) + "ay");
    }
  }
  
    // Case: Translates words with three consonants in the front.
    for (int i = 0; i < s.length(); i+=1) {
    if (isConsonant(s.charAt(0)) && isVowel(s.charAt(3))) {
      return (s.substring(3) + (s.charAt(0)) + (s.charAt(1)) + (s.charAt(2)) + "ay");
    } else {
      return (s.substring(1) + (s.charAt(0)) + "ay");
    }
  }
  
  return "";
}
