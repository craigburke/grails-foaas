package com.craigburke.foaas

import grails.converters.JSON

class FuckOffController {

    def index() {}

    def show() {
        int paramCount = params.name ? 2 : 1
        def messageArgs = paramCount == 2 ? [params.name, params.from] : [params.from]

        String typeName = params.type == "random" ? getRandomType(paramCount) : params.type
        String configPrefix = "fuckOff.${typeName}"

        renderMessage(configPrefix, messageArgs)
    }

    def thing() {
        def messageArgs = [params.thing, params.from]
        String configPrefix = "fuckOff.thing"

        renderMessage(configPrefix, messageArgs)
    }

    private def renderMessage(String configPrefix, def messageArgs) {

        String message = g.message(code: "${configPrefix}.message", args: messageArgs)
        String subtitle = g.message(code: "${configPrefix}.subtitle", args: messageArgs, default: '')

        def model = [message: message, subtitle: subtitle]

        withFormat {
            html {render view: "show", model: model}
            json {render model as JSON}
            text {render "${message} - ${subtitle}"}
        }
    }

    private String getRandomType(int paramCount) {
        def types = grailsApplication.config.fuckOff.types.findAll {it.paramCount == paramCount}
        int index = new Random().nextInt(types.size)
        types[index].type
    }
}
