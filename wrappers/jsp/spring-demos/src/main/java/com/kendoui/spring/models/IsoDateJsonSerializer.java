package com.kendoui.spring.models;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import java.util.Date;
import java.util.TimeZone;

public class IsoDateJsonSerializer extends JsonSerializer<Date>
{
    

    @Override
    public void serialize(Date date, JsonGenerator json, SerializerProvider provider) throws IOException {
        // The client side will handle presentation, we just want it accurate
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
        df.setTimeZone(TimeZone.getTimeZone("UTC"));
        String out = df.format(date);
        json.writeString(out);
    }
}