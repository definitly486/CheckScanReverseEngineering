package io.appmetrica.analytics.impl;

import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;
import io.appmetrica.analytics.locationapi.internal.LocationControllerObserver;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.gc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0944gc extends gh4 implements nl3 {
    public static final C0944gc a = new C0944gc();

    public C0944gc() {
        super(1);
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        ((LocationControllerObserver) obj).stopLocationTracking();
        return j59.a;
    }
}
