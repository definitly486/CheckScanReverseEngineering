package io.appmetrica.analytics.push.impl;

import androidx.core.app.NotificationCompat;
import defpackage.bm3;
import defpackage.qm3;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.a0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class C1444a0 extends qm3 implements bm3 {
    public static final C1444a0 a = new C1444a0();

    public C1444a0() {
        super(2, NotificationCompat.Builder.class, "setShowWhen", "setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;", 0);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((NotificationCompat.Builder) obj).setShowWhen(((Boolean) obj2).booleanValue());
    }
}
