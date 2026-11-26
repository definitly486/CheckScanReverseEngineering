package defpackage;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.zzlu;
import com.google.android.gms.measurement.internal.zzmb;
import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes4.dex */
public final class i3c implements Runnable {
    public final /* synthetic */ Bundle b;
    public final /* synthetic */ zzlu c;
    public final /* synthetic */ zzlu d;
    public final /* synthetic */ long e;
    public final /* synthetic */ zzmb f;

    public i3c(zzmb zzmbVar, Bundle bundle, zzlu zzluVar, zzlu zzluVar2, long j) {
        this.b = bundle;
        this.c = zzluVar;
        this.d = zzluVar2;
        this.e = j;
        this.f = zzmbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Bundle bundle = this.b;
        bundle.remove(FirebaseAnalytics.Param.SCREEN_NAME);
        bundle.remove(FirebaseAnalytics.Param.SCREEN_CLASS);
        zzmb zzmbVar = this.f;
        Bundle bundleH = zzmbVar.a.zzk().h(FirebaseAnalytics.Event.SCREEN_VIEW, bundle, null, false);
        zzmbVar.c(this.c, this.d, this.e, true, bundleH);
    }
}
