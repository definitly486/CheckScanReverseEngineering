package androidx.camera.camera2.impl;

import androidx.camera.camera2.adapter.CaptureConfigAdapter;
import androidx.camera.camera2.compat.workaround.UseTorchAsFlash;
import androidx.camera.camera2.config.UseCaseGraphContext;
import defpackage.ws6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CapturePipelineImpl_Factory implements xs6 {
    private final xs6<CameraProperties> cameraPropertiesProvider;
    private final xs6<CaptureConfigAdapter> configAdapterProvider;
    private final xs6<FlashControl> flashControlProvider;
    private final xs6<ComboRequestListener> requestListenerProvider;
    private final xs6<UseCaseThreads> threadsProvider;
    private final xs6<TorchControl> torchControlProvider;
    private final xs6<UseCaseCameraState> useCaseCameraStateProvider;
    private final xs6<UseCaseGraphContext> useCaseGraphContextProvider;
    private final xs6<UseTorchAsFlash> useTorchAsFlashProvider;
    private final xs6<VideoUsageControl> videoUsageControlProvider;

    private CapturePipelineImpl_Factory(xs6<CaptureConfigAdapter> xs6Var, xs6<FlashControl> xs6Var2, xs6<TorchControl> xs6Var3, xs6<VideoUsageControl> xs6Var4, xs6<UseCaseThreads> xs6Var5, xs6<ComboRequestListener> xs6Var6, xs6<UseTorchAsFlash> xs6Var7, xs6<CameraProperties> xs6Var8, xs6<UseCaseCameraState> xs6Var9, xs6<UseCaseGraphContext> xs6Var10) {
        this.configAdapterProvider = xs6Var;
        this.flashControlProvider = xs6Var2;
        this.torchControlProvider = xs6Var3;
        this.videoUsageControlProvider = xs6Var4;
        this.threadsProvider = xs6Var5;
        this.requestListenerProvider = xs6Var6;
        this.useTorchAsFlashProvider = xs6Var7;
        this.cameraPropertiesProvider = xs6Var8;
        this.useCaseCameraStateProvider = xs6Var9;
        this.useCaseGraphContextProvider = xs6Var10;
    }

    public static CapturePipelineImpl_Factory create(xs6<CaptureConfigAdapter> xs6Var, xs6<FlashControl> xs6Var2, xs6<TorchControl> xs6Var3, xs6<VideoUsageControl> xs6Var4, xs6<UseCaseThreads> xs6Var5, xs6<ComboRequestListener> xs6Var6, xs6<UseTorchAsFlash> xs6Var7, xs6<CameraProperties> xs6Var8, xs6<UseCaseCameraState> xs6Var9, xs6<UseCaseGraphContext> xs6Var10) {
        return new CapturePipelineImpl_Factory(xs6Var, xs6Var2, xs6Var3, xs6Var4, xs6Var5, xs6Var6, xs6Var7, xs6Var8, xs6Var9, xs6Var10);
    }

    public static CapturePipelineImpl newInstance(CaptureConfigAdapter captureConfigAdapter, FlashControl flashControl, TorchControl torchControl, VideoUsageControl videoUsageControl, UseCaseThreads useCaseThreads, ComboRequestListener comboRequestListener, UseTorchAsFlash useTorchAsFlash, CameraProperties cameraProperties, ws6<UseCaseCameraState> ws6Var, UseCaseGraphContext useCaseGraphContext) {
        return new CapturePipelineImpl(captureConfigAdapter, flashControl, torchControl, videoUsageControl, useCaseThreads, comboRequestListener, useTorchAsFlash, cameraProperties, ws6Var, useCaseGraphContext);
    }

    @Override // defpackage.ws6
    public CapturePipelineImpl get() {
        return newInstance(this.configAdapterProvider.get(), this.flashControlProvider.get(), this.torchControlProvider.get(), this.videoUsageControlProvider.get(), this.threadsProvider.get(), this.requestListenerProvider.get(), this.useTorchAsFlashProvider.get(), this.cameraPropertiesProvider.get(), this.useCaseCameraStateProvider, this.useCaseGraphContextProvider.get());
    }
}
