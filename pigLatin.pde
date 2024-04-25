public void setup(){
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0; i < lines.length; i++) {
	  System.out.println(pigL(lines[i]));
	}
}
public void draw(){
}

public int findFirstVowel(String sWord){
  for(int i = 0; i < sWord.length(); i++){
    String letter = sWord.substring(i, i + 1);
    if(letter.equals("a") || letter.equals("e") || letter.equals("i") || letter.equals("o") || letter.equals("u")){
      return i;
    }
  }
	return -1;
}

public String pigL(String sWord){
  int i = findFirstVowel(sWord);
  if(i == 0){
    return sWord + "way";
  }
	else if(i == -1){
		return sWord + "ay";
	}
  else if(i == 1 && sWord.substring(0, 2).equals("qu")){
    return sWord.substring(2, sWord.length()) + "quay";
  }
  else if(i >= 1){
    return sWord.substring(i, sWord.length()) + sWord.substring(0, i) + "ay";
  }
	else{
		return "ERROR!";
	}
}
