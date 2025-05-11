/*
 * JBoss, Home of Professional Open Source.
 * Copyright 2012, Red Hat, Inc., and individual contributors
 * as indicated by the @author tags. See the copyright.txt file in the
 * distribution for a full listing of individual contributors.
 *
 * This is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as
 * published by the Free Software Foundation; either version 2.1 of
 * the License, or (at your option) any later version.
 *
 * This software is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this software; if not, write to the Free
 * Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA
 * 02110-1301 USA, or see the FSF site: http://www.fsf.org.
 */
package org.richfaces.cdk.templatecompiler.model;

import java.util.Map;

import javax.xml.bind.annotation.*;
import javax.xml.namespace.QName;

import org.richfaces.cdk.CdkException;

/**
 * @author Lukas Fryc
 */
@XmlRootElement(name = "renderFragment", namespace = Template.CDK_NAMESPACE)
@XmlAccessorType(XmlAccessType.NONE)
public class CdkRenderFragmentElement implements ModelElement {

    private static final long serialVersionUID = -69641290521853989L;
	@XmlAttribute(required = true)
    private String name;
    @XmlAnyAttribute
    private Map<QName, String> attributes;


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Map<QName, String> getAttributes() {
        return attributes;
    }

    public void setAttributes(Map<QName, String> attributes) {
        this.attributes = attributes;
    }

    @Override
    public void visit(TemplateVisitor visitor) throws CdkException {
        visitor.visitElement(this);
    }
}
