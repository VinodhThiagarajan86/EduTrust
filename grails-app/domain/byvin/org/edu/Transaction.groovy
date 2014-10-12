package byvin.org.edu

class Transaction {

	float amtspent
	String purpose
	Date spentdate
	User spentperson
	
	String toString(){
		purpose
	}
	
    static constraints = {
		 amtspent(blank:false,nullable:false)
		 purpose(blank:false,nullable:false)
		 spentdate(blank:false,nullable:false)
		 spentperson(blank:false,nullable:false)
    }
}
