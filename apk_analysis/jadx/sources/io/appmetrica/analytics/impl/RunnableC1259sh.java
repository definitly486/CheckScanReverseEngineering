package io.appmetrica.analytics.impl;

import android.content.Context;
import android.os.Bundle;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.sh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC1259sh implements Runnable {
    public final Context a;
    public final C0783a6 b;
    public final Bundle c;
    public final C1143o4 d;

    public RunnableC1259sh(Context context, C0783a6 c0783a6, Bundle bundle, C1143o4 c1143o4) {
        this.a = context;
        this.b = c0783a6;
        this.c = bundle;
        this.d = c1143o4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            V3 v3A = V3.a(this.a, this.c);
            if (v3A == null) {
                return;
            }
            C0859d4 c0859d4A = C0859d4.a(v3A);
            C1261sj c1261sjV = Fa.I.v();
            c1261sjV.a(v3A.b.getAppVersion(), v3A.b.getAppBuildNumber());
            c1261sjV.a(v3A.b.getDeviceType());
            B4 b4 = new B4(new C1187pm(v3A), new A4(v3A.b, AbstractC1305ub.c(v3A.a.a.getAsString("PROCESS_CFG_CLIDS"))), v3A.a.b);
            this.d.a(c0859d4A, b4).a(this.b, b4);
        } catch (Throwable th) {
            C0900ek c0900ek = Bj.a;
            String str = "Exception during processing event with type: " + this.b.d + " (" + this.b.e + "): " + th.getMessage();
            c0900ek.getClass();
            c0900ek.a(new Cj(str, th));
        }
    }
}
