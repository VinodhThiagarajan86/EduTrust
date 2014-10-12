package byvin.org.edu



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DonationsController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Donations.list(params), model:[donationsInstanceCount: Donations.count()]
    }

    def show(Donations donationsInstance) {
        respond donationsInstance
    }

    def create() {
        respond new Donations(params)
    }

    @Transactional
    def save(Donations donationsInstance) {
        if (donationsInstance == null) {
            notFound()
            return
        }

        if (donationsInstance.hasErrors()) {
            respond donationsInstance.errors, view:'create'
            return
        }

        donationsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'donations.label', default: 'Donations'), donationsInstance.id])
                redirect donationsInstance
            }
            '*' { respond donationsInstance, [status: CREATED] }
        }
    }

    def edit(Donations donationsInstance) {
        respond donationsInstance
    }

    @Transactional
    def update(Donations donationsInstance) {
        if (donationsInstance == null) {
            notFound()
            return
        }

        if (donationsInstance.hasErrors()) {
            respond donationsInstance.errors, view:'edit'
            return
        }

        donationsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Donations.label', default: 'Donations'), donationsInstance.id])
                redirect donationsInstance
            }
            '*'{ respond donationsInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Donations donationsInstance) {

        if (donationsInstance == null) {
            notFound()
            return
        }

        donationsInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Donations.label', default: 'Donations'), donationsInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'donations.label', default: 'Donations'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
