import teste.*;

class BootStrap {

    def init = { servletContext ->
		
		User user = new User(name: 'Lars', email:'m@m.com', webpage:'http://www.testel.com')
		User user2 = new User(name: 'Jim', email:'j@j.com', webpage:'http://www.testej.com')
		
		if(!user.save()){
			log.error "Não pode salvar o usuário"
			log.error "${user.errors}"
		} 
		if(!user2.save()){
			log.error "Não pode salvar o usuário 2"
		}
		
		Feedback feedback = new Feedback(title:"First feedback", feedback:"This is my first feedback", user:user, dateCreate:new Date(),lastUpdate:new Date())
		if(!feedback.save()){
			log.error "Não pode salvar o feedback"
			log.error "${feedback.errors}"
		}
		
		Comment c = new Comment(comment:"Hello, my name is Jim",user:user2, dateCreated:new Date(),lastUpdate:new Date())
		c.feedback = feedback
		if(!c.save()){
			log.error "Não pode salvar o comentário"
			log.error "${c.errors}"
		}
		
		
		
    }
    def destroy = {
    }
}
