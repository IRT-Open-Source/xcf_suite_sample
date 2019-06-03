<?xml version="1.0" encoding="UTF-8"?>
<!-- Sample Schematron file -->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <sch:pattern id="bag-weight">
        <sch:rule context="cabin-bag/weight">
            <sch:let name="bag-weight" value="xs:float(.)"/>
            <sch:let name="passenger-name" value="../../name"/>
            <sch:assert test="$bag-weight le 8" see="http://www.cabin-bag.info/c1"
                diagnostics="diag-weight-8" id="assert-c1-1">The weight of cabin luggage is 8kg or
                less.</sch:assert>
            <sch:assert test="$bag-weight le 10" see="http://www.cabin-bag.info/c2"
                diagnostics="diag-weight-10" id="assert-c2-1">The weight of cabin luggage is 10kg or
                less.</sch:assert>
        </sch:rule>
        <sch:rule context="cabin-bag/height">
            <sch:let name="bag-height" value="xs:float(.)"/>
            <sch:let name="passenger-name" value="../../name"/>
            <sch:assert test="$bag-height le 55" see="http://www.cabin-bag.info/c3"
                diagnostics="diag-height-55" id="assert-c3-1">The height of cabin luggage is 55cm or
                less.</sch:assert>
        </sch:rule>
        <sch:rule context="cabin-bag/width">
            <sch:let name="bag-width" value="xs:float(.)"/>
            <sch:let name="passenger-name" value="../../name"/>
            <sch:assert test="$bag-width le 40" see="http://www.cabin-bag.info/c4"
                diagnostics="diag-width-40" id="assert-c4-1">The width of cabin luggage is 40cm or
                less.</sch:assert>
        </sch:rule>
        <sch:rule context="cabin-bag/depth">
            <sch:let name="bag-depth" value="xs:float(.)"/>
            <sch:let name="passenger-name" value="../../name"/>
            <sch:assert test="$bag-depth le 25" see="http://www.cabin-bag.info/c5"
                diagnostics="diag-depth-25" id="assert-c5-1">The depth of cabin luggage is 25cm or
                less.</sch:assert>
            <sch:assert test="$bag-depth le 24" see="http://www.cabin-bag.info/c1"
                diagnostics="diag-depth-24" id="assert-c6-1">The depth of cabin luggage is 24cm or
                less.</sch:assert>            
        </sch:rule>
    </sch:pattern>
    <sch:diagnostics>
        <sch:diagnostic id="diag-weight-8"> The cabin luggage of <sch:value-of select="$passenger-name"/>
            exceeds the maximum weight allowance by <sch:value-of select="$bag-weight -8"/>kg. Pack lighter! </sch:diagnostic>
        <sch:diagnostic id="diag-weight-10"> The cabin luggage of <sch:value-of select="$passenger-name"/>
            exceeds the maximum weight allowance by <sch:value-of select="$bag-weight - 10"/>kg. Pack lighter! </sch:diagnostic>
        <sch:diagnostic id="diag-height-55"> The cabin luggage of <sch:value-of select="$passenger-name"/>
            exceeds the maximum height allowance by <sch:value-of select="$bag-height - 55"/>cm. Get something with less height!</sch:diagnostic>       
        <sch:diagnostic id="diag-width-40"> The cabin luggage of <sch:value-of select="$passenger-name"/>
            exceeds the maximum height allowance by <sch:value-of select="$bag-width - 40"/>cm. Get something with less width!</sch:diagnostic>               
        <sch:diagnostic id="diag-depth-25"> The cabin luggage of <sch:value-of select="$passenger-name"/>
            exceeds the maximum depth allowance by <sch:value-of select="$bag-depth - 25"/>cm. Get something with less depth!</sch:diagnostic>               
        <sch:diagnostic id="diag-depth-24"> The cabin luggage of <sch:value-of select="$passenger-name"/>
            exceeds the maximum depth allowance by <sch:value-of select="$bag-depth - 24"/>cm. Get something with less depth!</sch:diagnostic>                       
    </sch:diagnostics>
</sch:schema>