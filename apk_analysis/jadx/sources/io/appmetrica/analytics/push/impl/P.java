package io.appmetrica.analytics.push.impl;

import android.app.PendingIntent;
import androidx.core.app.NotificationCompat;
import defpackage.bm3;
import defpackage.qm3;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class P extends qm3 implements bm3 {
    public static final P a = new P();

    public P() {
        super(2, NotificationCompat.Builder.class, "setDeleteIntent", "setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;", 0);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((NotificationCompat.Builder) obj).setDeleteIntent((PendingIntent) obj2);
    }
}
