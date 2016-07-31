public class Euler9{
	public static void main(String args[]){
		int tripSum = 0;
		
		for(int a = 1; a<1000; a++){
			if(tripSum == 1000)	break;
			int a_2 = a*a;
			
			for(int b=1; b<1000; b++){
				if(tripSum == 1000)	break;
				int b_2 = b*b;
				
				for(int c=1; c<1000; c++){
					int c_2 = c*c;
					if((a_2 + b_2) == c_2){
						tripSum = a + b + c;
						if(tripSum == 1000){
							System.out.println(a*b*c);
							break;
						}
					}
				}
			}
		}
	
	}
}