import java.math.BigInteger;
public class Euler8{
	public static void main(String args[]){
		String s = "73167176531330624919225119674426574742355349194934"+
						"96983520312774506326239578318016984801869478851843"+
						"85861560789112949495459501737958331952853208805511"+
						"12540698747158523863050715693290963295227443043557"+
						"66896648950445244523161731856403098711121722383113"+
						"62229893423380308135336276614282806444486645238749"+
						"30358907296290491560440772390713810515859307960866"+
						"70172427121883998797908792274921901699720888093776"+
						"65727333001053367881220235421809751254540594752243"+
						"52584907711670556013604839586446706324415722155397"+
						"53697817977846174064955149290862569321978468622482"+
						"83972241375657056057490261407972968652414535100474"+
						"82166370484403199890008895243450658541227588666881"+
						"16427171479924442928230863465674813919123162824586"+
						"17866458359124566529476545682848912883142607690042"+
						"24219022671055626321111109370544217506941658960408"+
						"07198403850962455444362981230987879927244284909188"+
						"84580156166097919133875499200524063689912560717606"+
						"05886116467109405077541002256983155200055935729725"+
						"71636269561882670428252483600823257530420752963450";
						
		BigInteger max = new BigInteger("1");
		
		for(int i=0; i<s.length()-13;i++){
			BigInteger a = new BigInteger(Character.toString(s.charAt(i)));
			BigInteger b = new BigInteger(Character.toString(s.charAt(i+1)));
			BigInteger c = new BigInteger(Character.toString(s.charAt(i+2)));
			BigInteger d= new BigInteger(Character.toString(s.charAt(i+3)));
			BigInteger e= new BigInteger(Character.toString(s.charAt(i+4)));
			BigInteger f= new BigInteger(Character.toString(s.charAt(i+5)));
			BigInteger g= new BigInteger(Character.toString(s.charAt(i+6)));
			BigInteger h= new BigInteger(Character.toString(s.charAt(i+7)));
			BigInteger j= new BigInteger(Character.toString(s.charAt(i+8)));
			BigInteger k= new BigInteger(Character.toString(s.charAt(i+9)));
			BigInteger l= new BigInteger(Character.toString(s.charAt(i+10)));
			BigInteger m= new BigInteger(Character.toString(s.charAt(i+11)));
			BigInteger n= new BigInteger(Character.toString(s.charAt(i+12)));
			
			BigInteger product = new BigInteger(Character.toString(s.charAt(i)));
			product = product.multiply(b).multiply(c).multiply(d).multiply(e).multiply(f).multiply(g).multiply(h).multiply(j).multiply(k).multiply(l).multiply(m).multiply(n);
			//a*b*c*d*e*f*g*h*j*k*l*m*n;
			//System.out.println(product);

			if(product.compareTo(max) == 1){
				max = product;
			}

			}//end of for loop
		
		System.out.println(max);
	}//end of main method
}//end of class