package teste

class HelloController {

    def index() { 
		def list = []
		list << new Person(firstName: 'John', lastName:'Doe', age:55)
		list << new Person(firstName: 'Jane', lastName:'Smith', age:45)
		list << new Person(firstName: 'Sam', lastName:'Robinson', age:47)
		[ list:list ] 
	}
	
	def displayForm() {
		
		Person person = new Person(age:55)
		[person:person]
		
	}
}