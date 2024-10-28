package org.richfaces.renderkit;

import jakarta.faces.application.ResourceDependencies;
import jakarta.faces.application.ResourceDependency;
import jakarta.faces.render.Renderer;

@ResourceDependencies({
        @ResourceDependency(library = "org.richfaces", name = "testComponent.js"),
        @ResourceDependency(library = "org.richfaces", name = "testComponent.css")})
public abstract class TestComponentRendererBase extends Renderer {
    public static final String RENDERER_TYPE = "org.richfaces.TestComponentRenderer";
}
