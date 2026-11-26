package io.appmetrica.analytics.push.impl;

import androidx.core.app.NotificationCompat;
import defpackage.fm3;
import defpackage.qm3;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class U extends qm3 implements fm3 {
    public static final U a = new U();

    public U() {
        super(4, NotificationCompat.Builder.class, "setLights", "setLights(III)Landroidx/core/app/NotificationCompat$Builder;", 0);
    }

    @Override // defpackage.fm3
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        return ((NotificationCompat.Builder) obj).setLights(((Number) obj2).intValue(), ((Number) obj3).intValue(), ((Number) obj4).intValue());
    }
}
