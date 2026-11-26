package androidx.camera.camera2.pipe.internal;

import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class GraphSessionLock_Factory implements xs6 {

    public static final class InstanceHolder {
        static final GraphSessionLock_Factory INSTANCE = new GraphSessionLock_Factory();

        private InstanceHolder() {
        }
    }

    public static GraphSessionLock_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static GraphSessionLock newInstance() {
        return new GraphSessionLock();
    }

    @Override // defpackage.ws6
    public GraphSessionLock get() {
        return newInstance();
    }
}
