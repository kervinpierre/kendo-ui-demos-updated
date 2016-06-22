package com.kendoui.spring.models;


import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.module.SimpleModule;

import java.text.SimpleDateFormat;
import java.util.Date;

public class CustomObjectMapper extends ObjectMapper
{

    public CustomObjectMapper(){
        super();
        
        SimpleModule module = new SimpleModule("JsonModule", new Version(1 , 0, 0, null));
        
        module.addSerializer(Date.class, new IsoDateJsonSerializer());
        
        registerModule(module);
    }
}