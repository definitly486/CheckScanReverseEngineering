package io.appmetrica.analytics.push.impl;

import androidx.core.app.NotificationCompat;
import defpackage.bm3;
import defpackage.qm3;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.f0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class C1464f0 extends qm3 implements bm3 {
    public static final C1464f0 a = new C1464f0();

    public C1464f0() {
        super(2, NotificationCompat.Builder.class, "setSubText", "setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;", 0);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((NotificationCompat.Builder) obj).setSubText((CharSequence) obj2);
    }
}
