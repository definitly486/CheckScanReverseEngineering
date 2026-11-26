package io.appmetrica.analytics.impl;

import android.content.Context;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Id {
    public static J9 a;

    public static final synchronized J9 a(Context context) {
        J9 j9;
        j9 = a;
        if (j9 == null) {
            j9 = new J9(context, "uuid.dat");
            a = j9;
        }
        return j9;
    }
}
