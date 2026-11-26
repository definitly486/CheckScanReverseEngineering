package androidx.camera.camera2.pipe.internal;

import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class FrameCaptureQueue_Factory implements xs6 {

    public static final class InstanceHolder {
        static final FrameCaptureQueue_Factory INSTANCE = new FrameCaptureQueue_Factory();

        private InstanceHolder() {
        }
    }

    public static FrameCaptureQueue_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static FrameCaptureQueue newInstance() {
        return new FrameCaptureQueue();
    }

    @Override // defpackage.ws6
    public FrameCaptureQueue get() {
        return newInstance();
    }
}
