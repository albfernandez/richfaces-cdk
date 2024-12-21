<#include "_copyright.ftl">

package ${targetClass.package};

import jakarta.annotation.Generated;
import jakarta.faces.component.PartialStateHolder;
import jakarta.faces.component.behavior.Behavior;
import jakarta.faces.context.FacesContext;
import jakarta.faces.event.BehaviorEvent;
import jakarta.faces.el.ValueBinding;
<#include "_attributes_import.ftl">

/**
 * ${description?if_exists}
 **/
@Generated({"RichFaces CDK", "4.5.0-SNAPSHOT"})
public class ${targetClass.simpleName} extends ${baseClass} implements Behavior, PartialStateHolder
<#if (implemented?size > 0)>, <@util.concat seq=implemented ; interface>${interface.simpleName}</@util.concat></#if> {

    <#if rendererType?exists >
    public String getRendererType() {
        return "${rendererType}";
    }
    </#if>
    <#include "_attributes-old.ftl">

    <#include "_state-holder-methods-old.ftl">
}