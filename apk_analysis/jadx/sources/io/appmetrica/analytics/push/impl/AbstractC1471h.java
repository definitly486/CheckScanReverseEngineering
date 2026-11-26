package io.appmetrica.analytics.push.impl;

import android.os.Build;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.h, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractC1471h {
    public static final boolean a(int i) {
        return Build.VERSION.SDK_INT >= i;
    }
}
