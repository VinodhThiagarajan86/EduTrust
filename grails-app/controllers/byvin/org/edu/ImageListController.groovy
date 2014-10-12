package byvin.org.edu



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ImageListController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ImageList.list(params), model:[imageListInstanceCount: ImageList.count()]
    }

    def show(ImageList imageListInstance) {
        respond imageListInstance
    }

    def create() {
        respond new ImageList(params)
    }

    @Transactional
    def save(ImageList imageListInstance) {
        if (imageListInstance == null) {
            notFound()
            return
        }

        if (imageListInstance.hasErrors()) {
            respond imageListInstance.errors, view:'create'
            return
        }

        imageListInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'imageList.label', default: 'ImageList'), imageListInstance.id])
                redirect imageListInstance
            }
            '*' { respond imageListInstance, [status: CREATED] }
        }
    }

    def edit(ImageList imageListInstance) {
        respond imageListInstance
    }

    @Transactional
    def update(ImageList imageListInstance) {
        if (imageListInstance == null) {
            notFound()
            return
        }

        if (imageListInstance.hasErrors()) {
            respond imageListInstance.errors, view:'edit'
            return
        }

        imageListInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ImageList.label', default: 'ImageList'), imageListInstance.id])
                redirect imageListInstance
            }
            '*'{ respond imageListInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ImageList imageListInstance) {

        if (imageListInstance == null) {
            notFound()
            return
        }

        imageListInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ImageList.label', default: 'ImageList'), imageListInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'imageList.label', default: 'ImageList'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
