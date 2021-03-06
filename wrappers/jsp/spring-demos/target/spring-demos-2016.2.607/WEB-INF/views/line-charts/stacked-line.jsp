<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<demo:header />
     <div class="demo-section k-content wide">
         <% 
             String[] categories = {
        		 "1952","1956",
        		 "1960","1964",
        		 "1968","1972",
        		 "1976","1980",
        		 "1984","1988",
        		 "1992","1996",
        		 "2000","2004",
        		 "2008","2012"
             };
         %>
         <kendo:chart name="chart">
             <kendo:chart-title text="Olympic Medals won by USA" />
             <kendo:chart-legend visible="false" />
             <kendo:chart-series>
                <kendo:chart-seriesItem type="line" stack="true" data="<%= new Integer[] { 40, 32, 34, 36, 45, 33, 34, null, 83, 36, 37, 44, 37, 35, 36, 46 } %>" name="Gold Medals" missingValues="gap" color="#f3ac32" />
                <kendo:chart-seriesItem type="line" stack="true" data="<%= new Integer[] { 19, 25, 21, 26, 28, 31, 35, null, 60, 31, 34, 32, 24, 40, 38, 29 } %>" name="Silver Medals" missingValues="gap" color="#b8b8b8" />
                <kendo:chart-seriesItem type="line" stack="true" data="<%= new Integer[] { 17, 17, 16, 28, 34, 30, 25, null, 30, 27, 37, 25, 33, 26, 36, 29 } %>" name="Bronze Medals" missingValues="gap" color="#bb6e36" />
             </kendo:chart-series>
             <kendo:chart-categoryAxis>
                <kendo:chart-categoryAxisItem categories="<%= categories %>">
                	<kendo:chart-categoryAxisItem-majorGridLines visible="false"/>
                </kendo:chart-categoryAxisItem>
             </kendo:chart-categoryAxis>
             <kendo:chart-valueAxis>
                <kendo:chart-valueAxisItem max="180">
                    <kendo:chart-valueAxisItem-line visible="false" />
                    <kendo:chart-valueAxisItem-minorGridLines visible="true"/>
                </kendo:chart-valueAxisItem>
             </kendo:chart-valueAxis>
             <kendo:chart-tooltip visible="true" template="#= series.name #: #= value #"  />
         </kendo:chart>
     </div>
<demo:footer />
