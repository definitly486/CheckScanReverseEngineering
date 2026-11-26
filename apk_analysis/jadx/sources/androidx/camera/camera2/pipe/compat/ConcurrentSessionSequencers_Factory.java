package androidx.camera.camera2.pipe.compat;

import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class ConcurrentSessionSequencers_Factory implements xs6 {

    public static final class InstanceHolder {
        static final ConcurrentSessionSequencers_Factory INSTANCE = new ConcurrentSessionSequencers_Factory();

        private InstanceHolder() {
        }
    }

    public static ConcurrentSessionSequencers_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static ConcurrentSessionSequencers newInstance() {
        return new ConcurrentSessionSequencers();
    }

    @Override // defpackage.ws6
    public ConcurrentSessionSequencers get() {
        return newInstance();
    }
}
