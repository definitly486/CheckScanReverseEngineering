package io.appmetrica.analytics.push.impl;

import androidx.core.app.NotificationCompat;
import defpackage.bm3;
import defpackage.qm3;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class Q extends qm3 implements bm3 {
    public static final Q a = new Q();

    public Q() {
        super(2, NotificationCompat.Builder.class, "setGroup", "setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;", 0);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((NotificationCompat.Builder) obj).setGroup((String) obj2);
    }
}
