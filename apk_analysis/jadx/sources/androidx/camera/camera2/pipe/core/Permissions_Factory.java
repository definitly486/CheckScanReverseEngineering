package androidx.camera.camera2.pipe.core;

import android.content.Context;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class Permissions_Factory implements xs6 {
    private final xs6<Context> cameraPipeContextProvider;

    private Permissions_Factory(xs6<Context> xs6Var) {
        this.cameraPipeContextProvider = xs6Var;
    }

    public static Permissions_Factory create(xs6<Context> xs6Var) {
        return new Permissions_Factory(xs6Var);
    }

    public static Permissions newInstance(Context context) {
        return new Permissions(context);
    }

    @Override // defpackage.ws6
    public Permissions get() {
        return newInstance(this.cameraPipeContextProvider.get());
    }
}
