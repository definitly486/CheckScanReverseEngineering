package androidx.camera.camera2.pipe.internal;

import androidx.camera.camera2.pipe.CameraBackends;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraDevicesImpl_Factory implements xs6 {
    private final xs6<CameraBackends> cameraBackendsProvider;

    private CameraDevicesImpl_Factory(xs6<CameraBackends> xs6Var) {
        this.cameraBackendsProvider = xs6Var;
    }

    public static CameraDevicesImpl_Factory create(xs6<CameraBackends> xs6Var) {
        return new CameraDevicesImpl_Factory(xs6Var);
    }

    public static CameraDevicesImpl newInstance(CameraBackends cameraBackends) {
        return new CameraDevicesImpl(cameraBackends);
    }

    @Override // defpackage.ws6
    public CameraDevicesImpl get() {
        return newInstance(this.cameraBackendsProvider.get());
    }
}
