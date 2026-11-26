package androidx.camera.camera2.config;

import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class CameraConfig {
    private final String cameraId;

    private CameraConfig(String str) {
        str.getClass();
        this.cameraId = str;
    }

    /* JADX INFO: renamed from: getCameraId-Dz_R5H8, reason: not valid java name */
    public final String m39getCameraIdDz_R5H8() {
        return this.cameraId;
    }

    public final CameraConfig provideCameraConfig() {
        return this;
    }

    public /* synthetic */ CameraConfig(String str, jh2 jh2Var) {
        this(str);
    }
}
