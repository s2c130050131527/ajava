

public class validation {
	public boolean confirm(String s1,String s2){
		if(s1.equals("admin")){
			if(s2.equals("admin")){
				return true;
			}
		}	
		return false;
	}

}
