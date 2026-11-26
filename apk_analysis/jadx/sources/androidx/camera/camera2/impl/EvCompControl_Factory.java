package androidx.camera.camera2.impl;

import androidx.camera.camera2.compat.EvCompCompat;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class EvCompControl_Factory implements xs6 {
    private final xs6<EvCompCompat> compatProvider;

    private EvCompControl_Factory(xs6<EvCompCompat> xs6Var) {
        this.compatProvider = xs6Var;
    }

    public static EvCompControl_Factory create(xs6<EvCompCompat> xs6Var) {
        return new EvCompControl_Factory(xs6Var);
    }

    public static EvCompControl newInstance(EvCompCompat evCompCompat) {
        return new EvCompControl(evCompCompat);
    }

    @Override // defpackage.ws6
    public EvCompControl get() {
        return newInstance(this.compatProvider.get());
    }
}
