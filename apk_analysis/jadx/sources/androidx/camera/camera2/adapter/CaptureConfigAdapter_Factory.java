package androidx.camera.camera2.adapter;

import androidx.camera.camera2.compat.workaround.TemplateParamsOverride;
import androidx.camera.camera2.config.UseCaseGraphContext;
import androidx.camera.camera2.impl.CameraProperties;
import androidx.camera.camera2.impl.UseCaseThreads;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CaptureConfigAdapter_Factory implements xs6 {
    private final xs6<CameraProperties> cameraPropertiesProvider;
    private final xs6<TemplateParamsOverride> templateParamsOverrideProvider;
    private final xs6<UseCaseThreads> threadsProvider;
    private final xs6<UseCaseGraphContext> useCaseGraphContextProvider;
    private final xs6<ZslControl> zslControlProvider;

    private CaptureConfigAdapter_Factory(xs6<CameraProperties> xs6Var, xs6<UseCaseGraphContext> xs6Var2, xs6<ZslControl> xs6Var3, xs6<UseCaseThreads> xs6Var4, xs6<TemplateParamsOverride> xs6Var5) {
        this.cameraPropertiesProvider = xs6Var;
        this.useCaseGraphContextProvider = xs6Var2;
        this.zslControlProvider = xs6Var3;
        this.threadsProvider = xs6Var4;
        this.templateParamsOverrideProvider = xs6Var5;
    }

    public static CaptureConfigAdapter_Factory create(xs6<CameraProperties> xs6Var, xs6<UseCaseGraphContext> xs6Var2, xs6<ZslControl> xs6Var3, xs6<UseCaseThreads> xs6Var4, xs6<TemplateParamsOverride> xs6Var5) {
        return new CaptureConfigAdapter_Factory(xs6Var, xs6Var2, xs6Var3, xs6Var4, xs6Var5);
    }

    public static CaptureConfigAdapter newInstance(CameraProperties cameraProperties, UseCaseGraphContext useCaseGraphContext, ZslControl zslControl, UseCaseThreads useCaseThreads, TemplateParamsOverride templateParamsOverride) {
        return new CaptureConfigAdapter(cameraProperties, useCaseGraphContext, zslControl, useCaseThreads, templateParamsOverride);
    }

    @Override // defpackage.ws6
    public CaptureConfigAdapter get() {
        return newInstance(this.cameraPropertiesProvider.get(), this.useCaseGraphContextProvider.get(), this.zslControlProvider.get(), this.threadsProvider.get(), this.templateParamsOverrideProvider.get());
    }
}
