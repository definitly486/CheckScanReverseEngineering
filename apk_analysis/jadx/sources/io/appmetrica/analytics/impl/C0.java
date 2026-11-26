package io.appmetrica.analytics.impl;

/* JADX INFO: loaded from: classes5.dex */
public final class C0 {
    public static boolean a() {
        boolean z;
        synchronized (B0.class) {
            z = B0.f;
        }
        return z;
    }

    public static void b() {
        synchronized (B0.class) {
            B0.f = true;
        }
    }
}
