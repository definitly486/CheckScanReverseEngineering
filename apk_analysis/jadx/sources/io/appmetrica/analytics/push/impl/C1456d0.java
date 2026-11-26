package io.appmetrica.analytics.push.impl;

import android.net.Uri;
import androidx.core.app.NotificationCompat;
import defpackage.bm3;
import defpackage.qm3;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.d0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class C1456d0 extends qm3 implements bm3 {
    public static final C1456d0 a = new C1456d0();

    public C1456d0() {
        super(2, NotificationCompat.Builder.class, "setSound", "setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;", 0);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((NotificationCompat.Builder) obj).setSound((Uri) obj2);
    }
}
