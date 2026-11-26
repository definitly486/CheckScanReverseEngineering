package io.appmetrica.analytics.screenshot.impl;

import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: renamed from: io.appmetrica.analytics.screenshot.impl.p, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1545p extends gh4 implements ll3 {
    public final /* synthetic */ C1547s a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1545p(C1547s c1547s) {
        super(0);
        this.a = c1547s;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        ((C1549u) this.a.b).a("ContentObserverScreenshotCaptor");
        return j59.a;
    }
}
