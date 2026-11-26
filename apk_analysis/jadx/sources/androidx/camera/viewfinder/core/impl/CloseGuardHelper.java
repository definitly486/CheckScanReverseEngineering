package androidx.camera.viewfinder.core.impl;

import android.os.Build;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class CloseGuardHelper {
    public static final Companion Companion = new Companion(null);
    private final CloseGuardImpl impl;

    private CloseGuardHelper(CloseGuardImpl closeGuardImpl) {
        this.impl = closeGuardImpl;
    }

    public final void close() {
        this.impl.close();
    }

    public final void open(String str) {
        str.getClass();
        this.impl.open(str);
    }

    public final void warnIfOpen() {
        this.impl.warnIfOpen();
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final CloseGuardHelper create() {
            jh2 jh2Var = null;
            return Build.VERSION.SDK_INT >= 30 ? new CloseGuardHelper(new CloseGuardApi30Impl(), jh2Var) : new CloseGuardHelper(new CloseGuardNoOpImpl(), jh2Var);
        }

        private Companion() {
        }
    }

    public /* synthetic */ CloseGuardHelper(CloseGuardImpl closeGuardImpl, jh2 jh2Var) {
        this(closeGuardImpl);
    }
}
