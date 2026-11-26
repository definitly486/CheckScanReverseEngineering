package io.appmetrica.analytics.push.impl;

import android.content.Context;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.g2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractC1470g2 {
    public static final int a(Context context) {
        L1 l1C = r.a(context).f.c();
        int i = l1C.a.getSharedPreferences(l1C.b, 0).getInt("pending_intent_id", 0);
        if (i < 1512312345 || i > 1512322343) {
            i = 1512312345;
        }
        int i2 = i + 1;
        l1C.a(i2);
        return i2;
    }
}
