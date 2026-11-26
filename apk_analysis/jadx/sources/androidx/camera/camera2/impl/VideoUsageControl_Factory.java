package androidx.camera.camera2.impl;

import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class VideoUsageControl_Factory implements xs6 {

    public static final class InstanceHolder {
        static final VideoUsageControl_Factory INSTANCE = new VideoUsageControl_Factory();

        private InstanceHolder() {
        }
    }

    public static VideoUsageControl_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static VideoUsageControl newInstance() {
        return new VideoUsageControl();
    }

    @Override // defpackage.ws6
    public VideoUsageControl get() {
        return newInstance();
    }
}
