<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<demo:header />

<kendo:splitter name="vertical" orientation="vertical">
    <kendo:splitter-panes>
        <kendo:splitter-pane id="top-pane" collapsible="false">
            <kendo:splitter-pane-content>
                <kendo:splitter name="horizontal" style="height: 100%; width: 100%;">
				    <kendo:splitter-panes>
				        <kendo:splitter-pane id="left-pane" collapsible="true" size="220px">
				            <kendo:splitter-pane-content>
				                <div class="pane-content">
					                <h3>Inner splitter / left pane</h3>
	                                <p>Resizable and collapsible.</p>
                                </div>
				            </kendo:splitter-pane-content>
				        </kendo:splitter-pane>
				        <kendo:splitter-pane id="center-pane" collapsible="false">
				            <kendo:splitter-pane-content>
				                <div class="pane-content">
					                <h3>Inner splitter / center pane</h3>
	                                <p>Resizable only.</p>
                                </div>
				            </kendo:splitter-pane-content>
				        </kendo:splitter-pane>
				        <kendo:splitter-pane id="right-pane" collapsible="true" size="220px">
				            <kendo:splitter-pane-content>
				                <div class="pane-content">
					                <h3>Inner splitter / right pane</h3>
	                                <p>Resizable and collapsible.</p>
                                </div>
				            </kendo:splitter-pane-content>
				        </kendo:splitter-pane>
				    </kendo:splitter-panes>
				</kendo:splitter>
            </kendo:splitter-pane-content>
        </kendo:splitter-pane>
        <kendo:splitter-pane id="middle-pane" collapsible="false" size="100px">
            <kendo:splitter-pane-content>
                <div class="pane-content">
	                <h3>Outer splitter / middle pane</h3>
	                <p>Resizable only.</p>
                </div>
            </kendo:splitter-pane-content>
        </kendo:splitter-pane>
        <kendo:splitter-pane id="bottom-pane" collapsible="false" resizable="false" size="100px">
            <kendo:splitter-pane-content>
                <div class="pane-content">
	                <h3>Outer splitter / bottom pane</h3>
	                <p>Non-resizable and non-collapsible.</p>
                </div>
            </kendo:splitter-pane-content>
        </kendo:splitter-pane>
    </kendo:splitter-panes>
</kendo:splitter>

<style>
    #vertical {
        height: 380px;
        margin: 0 auto;
    }

    #middle-pane { background-color: rgba(60, 70, 80, 0.10); }
    #bottom-pane { background-color: rgba(60, 70, 80, 0.15); }
    #left-pane, #center-pane, #right-pane  { background-color: rgba(60, 70, 80, 0.05); }

    .pane-content {
        padding: 0 10px;
    }
</style>

<demo:footer />