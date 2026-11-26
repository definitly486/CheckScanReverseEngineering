package androidx.camera.camera2.adapter;

import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraStateAdapter_Factory implements xs6 {

    public static final class InstanceHolder {
        static final CameraStateAdapter_Factory INSTANCE = new CameraStateAdapter_Factory();

        private InstanceHolder() {
        }
    }

    public static CameraStateAdapter_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static CameraStateAdapter newInstance() {
        return new CameraStateAdapter();
    }

    @Override // defpackage.ws6
    public CameraStateAdapter get() {
        return newInstance();
    }
}
