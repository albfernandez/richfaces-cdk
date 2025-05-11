<#include "_copyright.ftl">

package ${targetClass.package};

import jakarta.annotation.Generated;
import jakarta.faces.component.PartialStateHolder;
import jakarta.faces.component.StateHelper;
import jakarta.faces.component.UIComponent;
import jakarta.faces.context.FacesContext;
import jakarta.faces.convert.Converter;
import org.richfaces.component.PartialStateHolderHelper;
<#include "_attributes_import.ftl">

/**
 * ${description?if_exists}
 **/
@Generated({"RichFaces CDK", "10.0.1"})
public class ${targetClass.simpleName} extends ${baseClass} implements Converter, PartialStateHolder {

    @Override
    public Object getAsObject(FacesContext context, UIComponent component, String value) {
        return null;
    }

    @Override
    public String getAsString(FacesContext context, UIComponent component, Object value) {
        return null;
    }

    <#include "_attributes.ftl">

    <#include "_state-holder-methods.ftl">
}