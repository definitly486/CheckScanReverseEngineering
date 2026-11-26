package io.appmetrica.analytics.push.impl;

import android.graphics.Bitmap;
import androidx.core.app.NotificationCompat;
import defpackage.bm3;
import defpackage.qm3;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class T extends qm3 implements bm3 {
    public static final T a = new T();

    public T() {
        super(2, NotificationCompat.Builder.class, "setLargeIcon", "setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;", 0);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((NotificationCompat.Builder) obj).setLargeIcon((Bitmap) obj2);
    }
}
