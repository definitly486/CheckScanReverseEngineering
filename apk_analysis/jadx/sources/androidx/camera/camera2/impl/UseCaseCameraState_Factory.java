package androidx.camera.camera2.impl;

import androidx.camera.camera2.compat.workaround.TemplateParamsOverride;
import androidx.camera.camera2.config.UseCaseGraphContext;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class UseCaseCameraState_Factory implements xs6 {
    private final xs6<TemplateParamsOverride> templateParamsOverrideProvider;
    private final xs6<UseCaseGraphContext> useCaseGraphContextProvider;

    private UseCaseCameraState_Factory(xs6<UseCaseGraphContext> xs6Var, xs6<TemplateParamsOverride> xs6Var2) {
        this.useCaseGraphContextProvider = xs6Var;
        this.templateParamsOverrideProvider = xs6Var2;
    }

    public static UseCaseCameraState_Factory create(xs6<UseCaseGraphContext> xs6Var, xs6<TemplateParamsOverride> xs6Var2) {
        return new UseCaseCameraState_Factory(xs6Var, xs6Var2);
    }

    public static UseCaseCameraState newInstance(UseCaseGraphContext useCaseGraphContext, TemplateParamsOverride templateParamsOverride) {
        return new UseCaseCameraState(useCaseGraphContext, templateParamsOverride);
    }

    @Override // defpackage.ws6
    public UseCaseCameraState get() {
        return newInstance(this.useCaseGraphContextProvider.get(), this.templateParamsOverrideProvider.get());
    }
}
