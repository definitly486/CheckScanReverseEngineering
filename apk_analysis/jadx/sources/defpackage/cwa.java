package defpackage;

import android.os.Bundle;
import com.google.android.gms.common.api.internal.LifecycleCallback;

/* JADX INFO: loaded from: classes4.dex */
public final class cwa implements Runnable {
    public final /* synthetic */ LifecycleCallback b;
    public final /* synthetic */ String c;
    public final /* synthetic */ cza d;

    public cwa(cza czaVar, LifecycleCallback lifecycleCallback, String str) {
        this.b = lifecycleCallback;
        this.c = str;
        this.d = czaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        cza czaVar = this.d;
        int i = czaVar.b;
        LifecycleCallback lifecycleCallback = this.b;
        if (i > 0) {
            Bundle bundle = czaVar.c;
            lifecycleCallback.onCreate(bundle != null ? bundle.getBundle(this.c) : null);
        }
        if (czaVar.b >= 2) {
            lifecycleCallback.onStart();
        }
        if (czaVar.b >= 3) {
            lifecycleCallback.onResume();
        }
        if (czaVar.b >= 4) {
            lifecycleCallback.onStop();
        }
        if (czaVar.b >= 5) {
            lifecycleCallback.onDestroy();
        }
    }
}
