package com.craigburke.foaas

import grails.converters.JSON
import grails.converters.XML

class FuckOffController {

    def index() {}

    def show() {
        def messageArgs = params.to ? [params.to, params.from] : [params.from]
        String propertyPrefix = "fuckOff.${params.type}"

        String message = g.message(code: "${propertyPrefix}.message", args: messageArgs, default: '')
        String subtitle = g.message(code: "${propertyPrefix}.subtitle", args: messageArgs, default: '')

        def model = [message: message, subtitle: subtitle]

        withFormat {
            html model
            json {render model as JSON}
            text {render "${message} - ${subtitle}"}
        }

    }

}
