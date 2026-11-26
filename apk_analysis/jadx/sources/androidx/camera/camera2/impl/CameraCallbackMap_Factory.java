package androidx.camera.camera2.impl;

import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraCallbackMap_Factory implements xs6 {

    public static final class InstanceHolder {
        static final CameraCallbackMap_Factory INSTANCE = new CameraCallbackMap_Factory();

        private InstanceHolder() {
        }
    }

    public static CameraCallbackMap_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static CameraCallbackMap newInstance() {
        return new CameraCallbackMap();
    }

    @Override // defpackage.ws6
    public CameraCallbackMap get() {
        return newInstance();
    }
}
