package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.appsetid.internal.AppSetIdListener;
import io.appmetrica.analytics.coreapi.internal.identifiers.AppSetId;
import io.appmetrica.analytics.coreapi.internal.identifiers.AppSetIdScope;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.o2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1141o2 implements AppSetIdListener {
    public final /* synthetic */ C1167p2 a;

    public C1141o2(C1167p2 c1167p2) {
        this.a = c1167p2;
    }

    @Override // io.appmetrica.analytics.appsetid.internal.AppSetIdListener
    public final void onAppSetIdRetrieved(String str, AppSetIdScope appSetIdScope) {
        this.a.c = new AppSetId(str, appSetIdScope);
        this.a.d.countDown();
    }

    @Override // io.appmetrica.analytics.appsetid.internal.AppSetIdListener
    public final void onFailure(Throwable th) {
        this.a.d.countDown();
    }
}
