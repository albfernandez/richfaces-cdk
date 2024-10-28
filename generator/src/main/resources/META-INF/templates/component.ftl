<#include "_copyright.ftl">

package ${targetClass.package};

import jakarta.annotation.Generated;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

import jakarta.faces.context.FacesContext;
import jakarta.faces.component.UIComponent;
import jakarta.faces.component.behavior.ClientBehaviorHolder;
import jakarta.el.MethodExpression;
import jakarta.el.ValueExpression;
import jakarta.faces.component.StateHelper;
import ${baseClass};
<#include "_attributes_import.ftl">

/**
 * ${description?if_exists}
 **/
@Generated({"RichFaces CDK", "4.5.0-SNAPSHOT"})
public class ${targetClass.simpleName} extends ${baseClass.simpleName}
    <#if (implemented?size > 0)>implements <@util.concat seq=implemented ; interface>${interface.simpleName}</@util.concat></#if>    {

    public static final String COMPONENT_TYPE="${id}";

    <#if family?exists>
    public static final String COMPONENT_FAMILY="${family}";

    @Override
    public String getFamily() {
        return COMPONENT_FAMILY;
    }</#if>

    <#if rendererType?exists>
    public ${targetClass.simpleName}() {
        super();
        setRendererType("${rendererType}");
    }</#if>

    <#if (eventNames?size > 0)>
    private static final Collection<String> EVENT_NAMES = Collections.unmodifiableCollection(Arrays.asList(
        <@util.concat seq=eventNames delimiter=",\n        "; event>"${event.name}"</@util.concat>
        ));
    
    public Collection<String> getEventNames() {
        return EVENT_NAMES;
    }


    public String getDefaultEventName() {
        return <#if defaultEvent?exists>"${defaultEvent.name}"<#else>null</#if>;
    }</#if>


    <#include "_attributes.ftl">

    <#include "_facets.ftl">

    <#list events as event>
        <#include "_event_source_accessors.ftl">
    </#list>

}