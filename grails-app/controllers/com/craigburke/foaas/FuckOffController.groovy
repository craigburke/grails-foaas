package com.craigburke.foaas

import grails.converters.JSON
import grails.converters.XML
import org.apache.commons.lang.math.RandomUtils

class FuckOffController {

    def index() {}

    def show() {
        def messageArgs = params.to ? [params.to, params.from] : [params.from]
        String propertyPrefix = "fuckOff.${params.type}"

        String message = g.message(code: "${propertyPrefix}.message", args: messageArgs, default: '')
        String subtitle = g.message(code: "${propertyPrefix}.subtitle", args: messageArgs, default: '')
		
		renderMessage(message, subtitle)
    }
	
	def surpriseMe(){
        String message = g.message(code: "surpriseMe.message${RandomUtils.nextInt(16)}", default: "What a fucked up fucking fuck you are!!")
        String subtitle = 'Anonymous'
        renderMessage(message, subtitle)
    }

    private renderMessage(message, subtitle){
        def model = [message: message, subtitle: subtitle]
        withFormat {
            html model
            json {render model as JSON}
            text {render "${message} - ${subtitle}"}
        }
    }
}