package io.appmetrica.analytics.push.impl;

import androidx.core.app.NotificationCompat;
import defpackage.bm3;
import defpackage.qm3;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class X extends qm3 implements bm3 {
    public static final X a = new X();

    public X() {
        super(2, NotificationCompat.Builder.class, "setOnlyAlertOnce", "setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;", 0);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((NotificationCompat.Builder) obj).setOnlyAlertOnce(((Boolean) obj2).booleanValue());
    }
}
