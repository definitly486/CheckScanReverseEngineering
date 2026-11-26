package io.appmetrica.analytics.impl;

import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;
import io.appmetrica.analytics.locationapi.internal.LocationControllerObserver;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.fc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0918fc extends gh4 implements nl3 {
    public static final C0918fc a = new C0918fc();

    public C0918fc() {
        super(1);
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        ((LocationControllerObserver) obj).startLocationTracking();
        return j59.a;
    }
}
