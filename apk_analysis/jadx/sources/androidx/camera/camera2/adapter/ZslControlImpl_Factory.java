package androidx.camera.camera2.adapter;

import androidx.camera.camera2.impl.CameraProperties;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class ZslControlImpl_Factory implements xs6 {
    private final xs6<CameraProperties> cameraPropertiesProvider;

    private ZslControlImpl_Factory(xs6<CameraProperties> xs6Var) {
        this.cameraPropertiesProvider = xs6Var;
    }

    public static ZslControlImpl_Factory create(xs6<CameraProperties> xs6Var) {
        return new ZslControlImpl_Factory(xs6Var);
    }

    public static ZslControlImpl newInstance(CameraProperties cameraProperties) {
        return new ZslControlImpl(cameraProperties);
    }

    @Override // defpackage.ws6
    public ZslControlImpl get() {
        return newInstance(this.cameraPropertiesProvider.get());
    }
}
