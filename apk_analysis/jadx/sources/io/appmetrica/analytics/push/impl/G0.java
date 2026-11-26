package io.appmetrica.analytics.push.impl;

import android.content.Context;
import io.appmetrica.analytics.push.model.PushMessage;
import io.appmetrica.analytics.push.settings.PushFilter;

/* JADX INFO: loaded from: classes5.dex */
public abstract class G0 implements PushFilter {
    public final P1 a;

    public G0(P1 p1) {
        this.a = p1;
    }

    public static PushFilter[] a(Context context, r rVar) {
        return new PushFilter[]{new J2(context), new C1467g(), new H1(rVar.f()), new n2(rVar.f()), new D1(rVar), new C1449b1(new H0()), new R1(rVar.f()), new I(rVar.f()), new C1469g1(rVar), new r2()};
    }

    @Override // io.appmetrica.analytics.push.settings.PushFilter
    public final PushFilter.FilterResult filter(PushMessage pushMessage) {
        return this.a.filter(pushMessage);
    }

    public final void a(PushFilter... pushFilterArr) {
        for (PushFilter pushFilter : pushFilterArr) {
            this.a.a.add(pushFilter);
        }
    }
}
