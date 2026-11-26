package androidx.camera.camera2.compat.workaround;

import androidx.camera.camera2.compat.quirk.CameraQuirks;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class TemplateParamsOverride_Bindings_Companion_ProvideTemplateParamsOverrideFactory implements xs6 {
    private final xs6<CameraQuirks> cameraQuirksProvider;

    private TemplateParamsOverride_Bindings_Companion_ProvideTemplateParamsOverrideFactory(xs6<CameraQuirks> xs6Var) {
        this.cameraQuirksProvider = xs6Var;
    }

    public static TemplateParamsOverride_Bindings_Companion_ProvideTemplateParamsOverrideFactory create(xs6<CameraQuirks> xs6Var) {
        return new TemplateParamsOverride_Bindings_Companion_ProvideTemplateParamsOverrideFactory(xs6Var);
    }

    public static TemplateParamsOverride provideTemplateParamsOverride(CameraQuirks cameraQuirks) {
        TemplateParamsOverride templateParamsOverrideProvideTemplateParamsOverride = TemplateParamsOverride.Bindings.Companion.provideTemplateParamsOverride(cameraQuirks);
        te6.b(templateParamsOverrideProvideTemplateParamsOverride);
        return templateParamsOverrideProvideTemplateParamsOverride;
    }

    @Override // defpackage.ws6
    public TemplateParamsOverride get() {
        return provideTemplateParamsOverride(this.cameraQuirksProvider.get());
    }
}
