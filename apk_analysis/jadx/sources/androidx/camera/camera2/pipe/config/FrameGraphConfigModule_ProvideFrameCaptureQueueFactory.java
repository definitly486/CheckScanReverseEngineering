package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.internal.FrameCaptureQueue;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class FrameGraphConfigModule_ProvideFrameCaptureQueueFactory implements xs6 {
    private final FrameGraphConfigModule module;

    private FrameGraphConfigModule_ProvideFrameCaptureQueueFactory(FrameGraphConfigModule frameGraphConfigModule) {
        this.module = frameGraphConfigModule;
    }

    public static FrameGraphConfigModule_ProvideFrameCaptureQueueFactory create(FrameGraphConfigModule frameGraphConfigModule) {
        return new FrameGraphConfigModule_ProvideFrameCaptureQueueFactory(frameGraphConfigModule);
    }

    public static FrameCaptureQueue provideFrameCaptureQueue(FrameGraphConfigModule frameGraphConfigModule) {
        FrameCaptureQueue frameCaptureQueueProvideFrameCaptureQueue = frameGraphConfigModule.provideFrameCaptureQueue();
        te6.b(frameCaptureQueueProvideFrameCaptureQueue);
        return frameCaptureQueueProvideFrameCaptureQueue;
    }

    @Override // defpackage.ws6
    public FrameCaptureQueue get() {
        return provideFrameCaptureQueue(this.module);
    }
}
