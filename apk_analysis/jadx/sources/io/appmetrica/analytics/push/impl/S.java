package io.appmetrica.analytics.push.impl;

import androidx.core.app.NotificationCompat;
import defpackage.bm3;
import defpackage.qm3;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class S extends qm3 implements bm3 {
    public static final S a = new S();

    public S() {
        super(2, NotificationCompat.Builder.class, "setGroupSummary", "setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;", 0);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((NotificationCompat.Builder) obj).setGroupSummary(((Boolean) obj2).booleanValue());
    }
}
