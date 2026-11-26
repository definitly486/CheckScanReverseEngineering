package androidx.camera.camera2.pipe.graph;

import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class Listener3A_Factory implements xs6 {

    public static final class InstanceHolder {
        static final Listener3A_Factory INSTANCE = new Listener3A_Factory();

        private InstanceHolder() {
        }
    }

    public static Listener3A_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static Listener3A newInstance() {
        return new Listener3A();
    }

    @Override // defpackage.ws6
    public Listener3A get() {
        return newInstance();
    }
}
