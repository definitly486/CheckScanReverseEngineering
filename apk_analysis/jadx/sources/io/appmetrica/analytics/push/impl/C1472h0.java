package io.appmetrica.analytics.push.impl;

import androidx.core.app.NotificationCompat;
import defpackage.bm3;
import defpackage.qm3;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.h0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class C1472h0 extends qm3 implements bm3 {
    public static final C1472h0 a = new C1472h0();

    public C1472h0() {
        super(2, NotificationCompat.Builder.class, "setTimeoutAfter", "setTimeoutAfter(J)Landroidx/core/app/NotificationCompat$Builder;", 0);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((NotificationCompat.Builder) obj).setTimeoutAfter(((Number) obj2).longValue());
    }
}
