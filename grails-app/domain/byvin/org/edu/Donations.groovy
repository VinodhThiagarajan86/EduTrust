package byvin.org.edu

class Donations {

	float donamount
	Date dondate
	String donfor
	User donby
	
	
	String toString(){
		donamount
	}
	
    static constraints = {
		
		 donamount(blank:false,nullable:false)
		 dondate(blank:false,nullable:false)
		 donfor (blank:true,nullable:true)
		 donby (blank:false,nullable:false)
		
    }
}
