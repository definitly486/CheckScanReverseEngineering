package yads;

import android.content.Context;
import com.monetization.ads.core.utils.CallbackStackTraceMarker;
import com.warefly.checkscan.CheckScanApplication;
import com.yandex.mobile.ads.common.InitializationListener;
import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public final class um6 implements t70 {
    public final InitializationListener a;

    public um6(InitializationListener initializationListener) {
        this.a = initializationListener;
    }

    public static final j59 a(um6 um6Var) {
        ((defpackage.ni0) um6Var.a).getClass();
        Context context = CheckScanApplication.c;
        System.out.print((Object) "yandex mob sdk listener initialized");
        return j59.a;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof um6) && defpackage.aa4.e(((um6) obj).a, this.a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    @Override // yads.t70
    public final void onInitializationCompleted() {
        new CallbackStackTraceMarker(new defpackage.g22(this, 5));
    }
}
