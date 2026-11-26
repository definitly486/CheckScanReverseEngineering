package androidx.camera.camera2.pipe.internal;

import defpackage.mb4;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraPipeLifetime_Factory implements xs6 {
    private final xs6<mb4> cameraPipeJobProvider;

    private CameraPipeLifetime_Factory(xs6<mb4> xs6Var) {
        this.cameraPipeJobProvider = xs6Var;
    }

    public static CameraPipeLifetime_Factory create(xs6<mb4> xs6Var) {
        return new CameraPipeLifetime_Factory(xs6Var);
    }

    public static CameraPipeLifetime newInstance(mb4 mb4Var) {
        return new CameraPipeLifetime(mb4Var);
    }

    @Override // defpackage.ws6
    public CameraPipeLifetime get() {
        return newInstance(this.cameraPipeJobProvider.get());
    }
}
