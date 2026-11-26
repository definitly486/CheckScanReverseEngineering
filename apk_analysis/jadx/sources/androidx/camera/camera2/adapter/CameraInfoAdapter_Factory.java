package androidx.camera.camera2.adapter;

import androidx.camera.camera2.compat.StreamConfigurationMapCompat;
import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.config.CameraConfig;
import androidx.camera.camera2.impl.CameraCallbackMap;
import androidx.camera.camera2.impl.CameraProperties;
import androidx.camera.camera2.impl.FocusMeteringControl;
import androidx.camera.camera2.internal.IntrinsicZoomCalculator;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.internal.StreamSpecsCalculator;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraInfoAdapter_Factory implements xs6 {
    private final xs6<CameraCallbackMap> cameraCallbackMapProvider;
    private final xs6<CameraConfig> cameraConfigProvider;
    private final xs6<CameraControlStateAdapter> cameraControlStateAdapterProvider;
    private final xs6<CameraProperties> cameraPropertiesProvider;
    private final xs6<CameraQuirks> cameraQuirksProvider;
    private final xs6<CameraStateAdapter> cameraStateAdapterProvider;
    private final xs6<EncoderProfilesProvider> encoderProfilesProvider;
    private final xs6<FocusMeteringControl> focusMeteringControlProvider;
    private final xs6<IntrinsicZoomCalculator> intrinsicZoomCalculatorProvider;
    private final xs6<StreamConfigurationMapCompat> streamConfigurationMapCompatProvider;
    private final xs6<StreamSpecsCalculator> streamSpecsCalculatorProvider;

    private CameraInfoAdapter_Factory(xs6<CameraProperties> xs6Var, xs6<CameraConfig> xs6Var2, xs6<CameraStateAdapter> xs6Var3, xs6<CameraControlStateAdapter> xs6Var4, xs6<CameraCallbackMap> xs6Var5, xs6<FocusMeteringControl> xs6Var6, xs6<CameraQuirks> xs6Var7, xs6<EncoderProfilesProvider> xs6Var8, xs6<StreamConfigurationMapCompat> xs6Var9, xs6<IntrinsicZoomCalculator> xs6Var10, xs6<StreamSpecsCalculator> xs6Var11) {
        this.cameraPropertiesProvider = xs6Var;
        this.cameraConfigProvider = xs6Var2;
        this.cameraStateAdapterProvider = xs6Var3;
        this.cameraControlStateAdapterProvider = xs6Var4;
        this.cameraCallbackMapProvider = xs6Var5;
        this.focusMeteringControlProvider = xs6Var6;
        this.cameraQuirksProvider = xs6Var7;
        this.encoderProfilesProvider = xs6Var8;
        this.streamConfigurationMapCompatProvider = xs6Var9;
        this.intrinsicZoomCalculatorProvider = xs6Var10;
        this.streamSpecsCalculatorProvider = xs6Var11;
    }

    public static CameraInfoAdapter_Factory create(xs6<CameraProperties> xs6Var, xs6<CameraConfig> xs6Var2, xs6<CameraStateAdapter> xs6Var3, xs6<CameraControlStateAdapter> xs6Var4, xs6<CameraCallbackMap> xs6Var5, xs6<FocusMeteringControl> xs6Var6, xs6<CameraQuirks> xs6Var7, xs6<EncoderProfilesProvider> xs6Var8, xs6<StreamConfigurationMapCompat> xs6Var9, xs6<IntrinsicZoomCalculator> xs6Var10, xs6<StreamSpecsCalculator> xs6Var11) {
        return new CameraInfoAdapter_Factory(xs6Var, xs6Var2, xs6Var3, xs6Var4, xs6Var5, xs6Var6, xs6Var7, xs6Var8, xs6Var9, xs6Var10, xs6Var11);
    }

    public static CameraInfoAdapter newInstance(CameraProperties cameraProperties, CameraConfig cameraConfig, CameraStateAdapter cameraStateAdapter, CameraControlStateAdapter cameraControlStateAdapter, CameraCallbackMap cameraCallbackMap, FocusMeteringControl focusMeteringControl, CameraQuirks cameraQuirks, EncoderProfilesProvider encoderProfilesProvider, StreamConfigurationMapCompat streamConfigurationMapCompat, IntrinsicZoomCalculator intrinsicZoomCalculator, StreamSpecsCalculator streamSpecsCalculator) {
        return new CameraInfoAdapter(cameraProperties, cameraConfig, cameraStateAdapter, cameraControlStateAdapter, cameraCallbackMap, focusMeteringControl, cameraQuirks, encoderProfilesProvider, streamConfigurationMapCompat, intrinsicZoomCalculator, streamSpecsCalculator);
    }

    @Override // defpackage.ws6
    public CameraInfoAdapter get() {
        return newInstance(this.cameraPropertiesProvider.get(), this.cameraConfigProvider.get(), this.cameraStateAdapterProvider.get(), this.cameraControlStateAdapterProvider.get(), this.cameraCallbackMapProvider.get(), this.focusMeteringControlProvider.get(), this.cameraQuirksProvider.get(), this.encoderProfilesProvider.get(), this.streamConfigurationMapCompatProvider.get(), this.intrinsicZoomCalculatorProvider.get(), this.streamSpecsCalculatorProvider.get());
    }
}
