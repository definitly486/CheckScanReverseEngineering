package com.tapjoy.internal;

import android.app.Activity;
import com.tapjoy.TJSession;

/* JADX INFO: loaded from: classes4.dex */
public final class c2 implements Runnable {
    public final /* synthetic */ Activity a;

    public c2(Activity activity) {
        this.a = activity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        h2 h2Var = d2.a;
        Activity activity = this.a;
        h2Var.getClass();
        c.a();
        TJSession tJSession = h2Var.c;
        if (tJSession != null) {
            tJSession.onActivityStop(activity);
        }
    }
}
