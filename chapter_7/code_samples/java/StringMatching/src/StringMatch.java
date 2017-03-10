public class StringMatch {
	//I converted this from the code provided at http://www.geeksforgeeks.org/searching-for-patterns-set-5-finite-automata/ (which is in C)
	//NO_OF_CHARS is the number of characters in the ASCII table
	public static int NO_OF_CHARS = 256;
	
	public static int getNextState(char [] pat, int M, int state, int x){
		
		if (state < M && x == pat[state]){
			return state + 1;
		}
		
		int ns, i;

        for (ns = state; ns > 0; ns--){
            if (pat[ns - 1] == x){
                for (i = 0; i < ns - 1; i++){
                    if (pat[i] != pat[state - ns + 1 + i])
                        break;
                }
                if (i == ns - 1)
                    return ns;
            }
        }
		return 0;
	}
	
	public static void computeTF(char [] pat, int M, int [][] TF){
		int state, x;
		for (state = 0; state <= M; state++){
		  for (x = 0; x < NO_OF_CHARS; x++){
			  TF[state][x] = getNextState(pat, M, state, x);
		  }
		}
	}
	
	/* Prints all occurrences of pat in txt */
	public static void search(char [] pat, char [] txt)
	{
	  int M = pat.length;
	  int N = txt.length;
	  boolean patternFound = false;
	 
	  int [][] TF = new int [M+1][NO_OF_CHARS];
	 
	  computeTF(pat, M, TF);
	 
	  //Process txt over FA.
	  int i;
	  int state = 0;
	  for (i = 0; i < N; i++){
		state = TF[state][txt[i]];
		  if (state == M){
			  System.out.println(pat);
			  System.out.println("Pattern found at " + (i - M + 1) + "\n");
			  patternFound = true;
		  }
	  }
	  if(!patternFound){
		  System.out.println("No matching patterns found");
	  }
	}
	
	public static void main(String[] args) {
		 String txt = "BaDWOLFWOLFBaD#BADWOLFWOLFBAD";
		 String pat = "BaD#";
		 search(pat.toCharArray(), txt.toCharArray());
    }

}
