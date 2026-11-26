package io.appmetrica.analytics.push.impl;

import androidx.core.app.NotificationCompat;
import defpackage.bm3;
import defpackage.qm3;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.m0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class C1490m0 extends qm3 implements bm3 {
    public static final C1490m0 a = new C1490m0();

    public C1490m0() {
        super(2, NotificationCompat.Builder.class, "setCategory", "setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;", 0);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((NotificationCompat.Builder) obj).setCategory((String) obj2);
    }
}
