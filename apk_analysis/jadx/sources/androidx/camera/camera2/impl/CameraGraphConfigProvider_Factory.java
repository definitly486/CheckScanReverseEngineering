package androidx.camera.camera2.impl;

import androidx.camera.camera2.adapter.ZslControl;
import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.compat.workaround.TemplateParamsOverride;
import androidx.camera.camera2.config.CameraConfig;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.CameraXConfig;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraGraphConfigProvider_Factory implements xs6 {
    private final xs6<CameraCallbackMap> callbackMapProvider;
    private final xs6<CameraConfig> cameraConfigProvider;
    private final xs6<CameraInteropStateCallbackRepository> cameraInteropStateCallbackRepositoryProvider;
    private final xs6<CameraMetadata> cameraMetadataProvider;
    private final xs6<CameraQuirks> cameraQuirksProvider;
    private final xs6<CameraXConfig> cameraXConfigProvider;
    private final xs6<ComboRequestListener> requestListenerProvider;
    private final xs6<TemplateParamsOverride> templateParamsOverrideProvider;
    private final xs6<ZslControl> zslControlProvider;

    private CameraGraphConfigProvider_Factory(xs6<CameraCallbackMap> xs6Var, xs6<ComboRequestListener> xs6Var2, xs6<CameraConfig> xs6Var3, xs6<CameraQuirks> xs6Var4, xs6<ZslControl> xs6Var5, xs6<TemplateParamsOverride> xs6Var6, xs6<CameraMetadata> xs6Var7, xs6<CameraXConfig> xs6Var8, xs6<CameraInteropStateCallbackRepository> xs6Var9) {
        this.callbackMapProvider = xs6Var;
        this.requestListenerProvider = xs6Var2;
        this.cameraConfigProvider = xs6Var3;
        this.cameraQuirksProvider = xs6Var4;
        this.zslControlProvider = xs6Var5;
        this.templateParamsOverrideProvider = xs6Var6;
        this.cameraMetadataProvider = xs6Var7;
        this.cameraXConfigProvider = xs6Var8;
        this.cameraInteropStateCallbackRepositoryProvider = xs6Var9;
    }

    public static CameraGraphConfigProvider_Factory create(xs6<CameraCallbackMap> xs6Var, xs6<ComboRequestListener> xs6Var2, xs6<CameraConfig> xs6Var3, xs6<CameraQuirks> xs6Var4, xs6<ZslControl> xs6Var5, xs6<TemplateParamsOverride> xs6Var6, xs6<CameraMetadata> xs6Var7, xs6<CameraXConfig> xs6Var8, xs6<CameraInteropStateCallbackRepository> xs6Var9) {
        return new CameraGraphConfigProvider_Factory(xs6Var, xs6Var2, xs6Var3, xs6Var4, xs6Var5, xs6Var6, xs6Var7, xs6Var8, xs6Var9);
    }

    public static CameraGraphConfigProvider newInstance(CameraCallbackMap cameraCallbackMap, ComboRequestListener comboRequestListener, CameraConfig cameraConfig, CameraQuirks cameraQuirks, ZslControl zslControl, TemplateParamsOverride templateParamsOverride, CameraMetadata cameraMetadata, CameraXConfig cameraXConfig, CameraInteropStateCallbackRepository cameraInteropStateCallbackRepository) {
        return new CameraGraphConfigProvider(cameraCallbackMap, comboRequestListener, cameraConfig, cameraQuirks, zslControl, templateParamsOverride, cameraMetadata, cameraXConfig, cameraInteropStateCallbackRepository);
    }

    @Override // defpackage.ws6
    public CameraGraphConfigProvider get() {
        return newInstance(this.callbackMapProvider.get(), this.requestListenerProvider.get(), this.cameraConfigProvider.get(), this.cameraQuirksProvider.get(), this.zslControlProvider.get(), this.templateParamsOverrideProvider.get(), this.cameraMetadataProvider.get(), this.cameraXConfigProvider.get(), this.cameraInteropStateCallbackRepositoryProvider.get());
    }
}
