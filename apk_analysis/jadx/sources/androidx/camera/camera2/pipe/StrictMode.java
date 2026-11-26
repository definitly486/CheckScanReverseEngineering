package androidx.camera.camera2.pipe;

import androidx.camera.camera2.pipe.core.Log;
import defpackage.ah;
import defpackage.ll3;

/* JADX INFO: loaded from: classes.dex */
public final class StrictMode {
    private final boolean enabled;

    public StrictMode(boolean z) {
        this.enabled = z;
    }

    public final void check(boolean z, ll3<String> ll3Var) {
        ll3Var.getClass();
        if (z) {
            return;
        }
        String strInvoke = ll3Var.invoke();
        if (getEnabled()) {
            ah.f(strInvoke);
        } else if (Log.INSTANCE.getWARN_LOGGABLE()) {
            android.util.Log.w(Log.TAG, strInvoke);
        }
    }

    public final boolean getEnabled() {
        return this.enabled;
    }
}
