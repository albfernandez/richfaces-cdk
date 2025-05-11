<#include "_copyright.ftl">

package ${targetClass.package};

import jakarta.annotation.Generated;
import jakarta.faces.component.UIComponent;
import jakarta.faces.component.PartialStateHolder;
import jakarta.faces.context.FacesContext;
import jakarta.faces.validator.Validator;
import jakarta.faces.validator.ValidatorException;
import jakarta.faces.el.ValueBinding;
<#include "_attributes_import.ftl">

/**
 * ${description?if_exists}
 **/
@Generated({"RichFaces CDK", "10.0.1"})
public class ${targetClass.simpleName} extends ${baseClass} implements Validator, PartialStateHolder {

    @Override
    public void validate(FacesContext context, UIComponent component, Object value) throws ValidatorException {
        
    }

    <#include "_attributes-old.ftl">

    <#include "_state-holder-methods-old.ftl">
}