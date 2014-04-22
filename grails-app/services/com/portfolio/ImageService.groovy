package com.portfolio

import grails.transaction.Transactional
import org.springframework.web.multipart.MultipartFile

@Transactional
class ImageService {

    static transactional = false

    def grailsApplication

    String fullPath(String category = null) {

        String returnPath = grailsApplication.config.imageindirect.basePath
        String categoryUrl = category ? grailsApplication.config.imageindirect.category."${category}" : null

        if (categoryUrl) {
            if (categoryUrl.startsWith("/")) {
                returnPath = categoryUrl
            } else {
                returnPath += "/${categoryUrl}"
            }
        }
        return returnPath
    }

    boolean deleteImage(String attachmentUrl, String category = null) {
        if (!attachmentUrl) {
            return false
        }
        boolean delStatus= false
        try{
            def storagePath = fullPath(category)
            File file = new File(storagePath, attachmentUrl)
            if (file.exists()){
              delStatus =  file.delete();

            }
        }catch (Exception ex){
            ex.printStackTrace();
            delStatus = false
        }
        return delStatus
    }


}
