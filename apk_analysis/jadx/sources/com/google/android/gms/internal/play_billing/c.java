package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes4.dex */
public final class c {
    public static final c c;
    public static final c d;
    public final boolean a;
    public final Throwable b;

    static {
        if (m.g) {
            d = null;
            c = null;
        } else {
            d = new c(false, null);
            c = new c(true, null);
        }
    }

    public c(boolean z, Throwable th) {
        this.a = z;
        this.b = th;
    }
}
