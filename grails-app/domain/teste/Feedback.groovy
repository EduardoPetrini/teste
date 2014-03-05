package teste

import java.text.Format;

class Feedback {

	String title
	String feedback
	Date dateCreate
	Date lastUpdate
	
	User user
	
	static hasMany=[comments:Comment]
	
    static constraints = {
		title(blank:false, nullable:false,size:3..80)
		feedback(blank:false, nullable:false, size:3..500)
		user(nullable:false)
    }
}
