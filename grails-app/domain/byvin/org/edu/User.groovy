package byvin.org.edu

class User {

	String firstname
	String middlename
	String lastname
	double phonenumber
	String emailid
	String address
	
	static hasMany = [donations :Donations , transaction : Transaction]
	
	String toString(){
		firstname+ ' '+lastname
	}
	
    static constraints = {
		
		 firstname(blank:false,nullable:false)
		 middlename(blank:true,nullable:true)
		 lastname(blank:false,nullable:false)
		 phonenumber(blank:false,nullable:false,minSize:10)
		 emailid(blank:false,nullable:false)
		 address(blank:true,nullable:true)
    }
}
