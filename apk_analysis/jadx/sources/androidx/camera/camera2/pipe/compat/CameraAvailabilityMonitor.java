package androidx.camera.camera2.pipe.compat;

import defpackage.e02;

/* JADX INFO: loaded from: classes.dex */
public interface CameraAvailabilityMonitor {

    public interface Session extends AutoCloseable {
        Object awaitAvailableCamera(long j, e02<? super Boolean> e02Var);
    }

    /* JADX INFO: renamed from: startMonitoring-0r8Bogc */
    Object mo755startMonitoring0r8Bogc(String str, e02<? super Session> e02Var);
}
