package com.tapjoy.internal;

import android.app.Activity;
import com.tapjoy.TJSession;

/* JADX INFO: loaded from: classes4.dex */
public final class b2 implements Runnable {
    public final /* synthetic */ Activity a;

    public b2(Activity activity) {
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
            tJSession.setSemiAutoSessionTrackingStarted(true);
            h2Var.c.onActivityStart(activity);
        }
    }
}
