package com.pilotapp.polling

import grails.plugin.springsecurity.annotation.Secured


class ShowpollsController {
    @Secured(['permitAll'])
    def index() {

        def pollList = null //Poll.findAllByStatus(true);
        println(pollList.size())
        // This page will list all active poll
        render (view: 'showList',model: [pollList:pollList])
    }
    @Secured(['ROLE_ADMIN','ROLE_USER'])
    def participate(Long id){
        /*Poll aPoll = Poll.read(id)
        if(!aPoll){
            redirect(action: 'index')
        }
        render (view: 'participateInPole',model: [aPoll:aPoll])*/
    }
    @Secured(['ROLE_ADMIN','ROLE_USER'])
    def savePoll(){
        println params
        if (request.method == 'POST') {

        }
        redirect(action:'index')
    }
}
