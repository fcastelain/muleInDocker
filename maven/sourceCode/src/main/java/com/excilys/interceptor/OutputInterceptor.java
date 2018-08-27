package com.excilys.interceptor;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.mule.api.MuleEvent;
import org.mule.api.MuleException;
import org.mule.api.MuleMessage;
import org.mule.api.interceptor.Interceptor;
import org.mule.processor.AbstractInterceptingMessageProcessor;

public class OutputInterceptor extends AbstractInterceptingMessageProcessor implements Interceptor {

    private static Logger logger = LogManager.getLogger("org.mule.interceptor.OutputInterceptor");

    public MuleEvent process(MuleEvent event) throws MuleException {

        MuleMessage initialMessage = event.getMessage();

        try {
            String payloadValue = initialMessage.getPayloadAsString().replaceAll("\n", "").replaceAll("\t", "");

            logger.info("{\"X-REQUEST-ID\":\"" + initialMessage.getInvocationProperty("requestId")
                    + "\",\"payload\":" + payloadValue + "}");

        } catch (Exception e) {
            e.printStackTrace();
        }

        return processNext(event);
    }

}
