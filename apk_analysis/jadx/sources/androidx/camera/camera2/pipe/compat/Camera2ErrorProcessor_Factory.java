package androidx.camera.camera2.pipe.compat;

import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2ErrorProcessor_Factory implements xs6 {

    public static final class InstanceHolder {
        static final Camera2ErrorProcessor_Factory INSTANCE = new Camera2ErrorProcessor_Factory();

        private InstanceHolder() {
        }
    }

    public static Camera2ErrorProcessor_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static Camera2ErrorProcessor newInstance() {
        return new Camera2ErrorProcessor();
    }

    @Override // defpackage.ws6
    public Camera2ErrorProcessor get() {
        return newInstance();
    }
}
