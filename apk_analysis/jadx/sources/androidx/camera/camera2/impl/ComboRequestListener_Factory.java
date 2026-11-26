package androidx.camera.camera2.impl;

import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class ComboRequestListener_Factory implements xs6 {

    public static final class InstanceHolder {
        static final ComboRequestListener_Factory INSTANCE = new ComboRequestListener_Factory();

        private InstanceHolder() {
        }
    }

    public static ComboRequestListener_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static ComboRequestListener newInstance() {
        return new ComboRequestListener();
    }

    @Override // defpackage.ws6
    public ComboRequestListener get() {
        return newInstance();
    }
}
