package androidx.browser.trusted;

import android.os.Bundle;
import android.os.IBinder;
import defpackage.xz3;

/* JADX INFO: loaded from: classes.dex */
public class TrustedWebActivityCallbackRemote {
    private final xz3 mCallbackBinder;

    private TrustedWebActivityCallbackRemote(xz3 xz3Var) {
        this.mCallbackBinder = xz3Var;
    }

    public static TrustedWebActivityCallbackRemote fromBinder(IBinder iBinder) {
        xz3 xz3VarAsInterface = iBinder == null ? null : xz3.a.asInterface(iBinder);
        if (xz3VarAsInterface == null) {
            return null;
        }
        return new TrustedWebActivityCallbackRemote(xz3VarAsInterface);
    }

    public void runExtraCallback(String str, Bundle bundle) {
        this.mCallbackBinder.onExtraCallback(str, bundle);
    }
}
