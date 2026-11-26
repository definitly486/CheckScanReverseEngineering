package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.core.SystemClockOffsets;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import androidx.camera.camera2.pipe.internal.FrameCaptureQueue;
import androidx.camera.camera2.pipe.internal.FrameDistributor;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class SharedCameraGraphModules_Companion_ProvideFrameDistributorFactory implements xs6 {
    private final xs6<CameraMetadata> cameraMetadataProvider;
    private final xs6<FrameCaptureQueue> frameCaptureQueueProvider;
    private final xs6<StreamGraphImpl> streamGraphImplProvider;
    private final xs6<SystemClockOffsets> systemClockOffsetsProvider;

    private SharedCameraGraphModules_Companion_ProvideFrameDistributorFactory(xs6<StreamGraphImpl> xs6Var, xs6<FrameCaptureQueue> xs6Var2, xs6<CameraMetadata> xs6Var3, xs6<SystemClockOffsets> xs6Var4) {
        this.streamGraphImplProvider = xs6Var;
        this.frameCaptureQueueProvider = xs6Var2;
        this.cameraMetadataProvider = xs6Var3;
        this.systemClockOffsetsProvider = xs6Var4;
    }

    public static SharedCameraGraphModules_Companion_ProvideFrameDistributorFactory create(xs6<StreamGraphImpl> xs6Var, xs6<FrameCaptureQueue> xs6Var2, xs6<CameraMetadata> xs6Var3, xs6<SystemClockOffsets> xs6Var4) {
        return new SharedCameraGraphModules_Companion_ProvideFrameDistributorFactory(xs6Var, xs6Var2, xs6Var3, xs6Var4);
    }

    public static FrameDistributor provideFrameDistributor(StreamGraphImpl streamGraphImpl, FrameCaptureQueue frameCaptureQueue, CameraMetadata cameraMetadata, SystemClockOffsets systemClockOffsets) {
        FrameDistributor frameDistributorProvideFrameDistributor = SharedCameraGraphModules.Companion.provideFrameDistributor(streamGraphImpl, frameCaptureQueue, cameraMetadata, systemClockOffsets);
        te6.b(frameDistributorProvideFrameDistributor);
        return frameDistributorProvideFrameDistributor;
    }

    @Override // defpackage.ws6
    public FrameDistributor get() {
        return provideFrameDistributor(this.streamGraphImplProvider.get(), this.frameCaptureQueueProvider.get(), this.cameraMetadataProvider.get(), this.systemClockOffsetsProvider.get());
    }
}
