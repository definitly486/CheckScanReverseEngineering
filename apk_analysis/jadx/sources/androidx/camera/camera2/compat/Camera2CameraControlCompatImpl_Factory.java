package androidx.camera.camera2.compat;

import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2CameraControlCompatImpl_Factory implements xs6 {

    public static final class InstanceHolder {
        static final Camera2CameraControlCompatImpl_Factory INSTANCE = new Camera2CameraControlCompatImpl_Factory();

        private InstanceHolder() {
        }
    }

    public static Camera2CameraControlCompatImpl_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static Camera2CameraControlCompatImpl newInstance() {
        return new Camera2CameraControlCompatImpl();
    }

    @Override // defpackage.ws6
    public Camera2CameraControlCompatImpl get() {
        return newInstance();
    }
}
