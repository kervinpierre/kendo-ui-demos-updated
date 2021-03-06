<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<div class="demo-section k-content">
    <h4>Slider</h4>
    <kendo:slider name="slider" class="temperature" min="0" max="30" smallStep="1" largeStep="10" value="18">
	</kendo:slider>
</div>
<div class="demo-section k-content">
    <h4>RangeSlider</h4>
	<kendo:rangeSlider name="rangeSlider" class="humidity" min="0" max="10" smallStep="1" largeStep="2" tickPlacement="both">
    </kendo:rangeSlider>
</div>

<div class="box wide">
    <div class="box-col">
    <h4>Focus</h4>
    <ul class="keyboard-legend" style="padding-top: 25px">
        <li>
            <span class="button-preview">
                <span class="key-button leftAlign">Alt</span>
                +
                <span class="key-button">W</span>
            </span>
            <span class="button-descr">
                Focuses the slider (clicking on it or tabbing also work)
            </span>
        </li>
        <li>
            <span class="button-preview">
                <span class="key-button leftAlign">Alt</span>
                +
                <span class="key-button">Q</span>
            </span>
            <span class="button-descr">
                Focuses the range slider (clicking on it or tabbing also work)
            </span>
        </li>
    </ul>
    </div>

    <div class="box-col">
    <h4>Supported keys and user actions</h4>
    <ul class="keyboard-legend">
        <li>
            <span class="button-preview">
                <span class="key-button">Right</span>
            </span>
            <span class="button-descr">
                Increments the value by a small step (equivalent to Up)
            </span>
        </li>
        <li>
            <span class="button-preview">
                <span class="key-button">Left</span>
            </span>
            <span class="button-descr">
                Decrements the value by a small step (equivalent to Down)
            </span>
        </li>
        <li>
            <span class="button-preview">
                <span class="key-button wider">Page Up</span>
            </span>
            <span class="button-descr">
                Increments the value by a large step
            </span>
        </li>
        <li>
            <span class="button-preview">
                <span class="key-button wider">Page Down</span>
            </span>
            <span class="button-descr">
                Decrements the value by a large step
            </span>
        </li>
        <li>
            <span class="button-preview">
                <span class="key-button">Home</span>
            </span>
            <span class="button-descr">
                Move the draghandle to the min value
            </span>
        </li>
        <li>
            <span class="button-preview">
                <span class="key-button">End</span>
            </span>
            <span class="button-descr">
                Move the draghandle to the max value
            </span>
        </li>
        <li>
            <span class="button-preview">
                <span class="key-button">Tab</span>
            </span>
            <span class="button-descr">
                Tabs to second range slider draghandle or next focusable page element
            </span>
        </li>
        <li>
            <span class="button-preview">
                <span class="key-button leftAlign">Shift</span>
                +
                <span class="key-button">Tab</span>
            </span>
            <span class="button-descr">
                Tabs to first range slider draghandle or previous focusable page element
            </span>
        </li>
    </ul>
    </div>
</div>

<script>
	$(document.body).keydown(function(e) {
	    if (e.altKey && e.keyCode == 87) {
	        $(".temperature .k-draghandle")[0].focus();
	    } else if (e.altKey && e.keyCode == 81) {
	        $(".humidity .k-draghandle").first()[0].focus();
	    }
	});
</script>

<demo:footer />