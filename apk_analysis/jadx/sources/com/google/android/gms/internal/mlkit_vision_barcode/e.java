package com.google.android.gms.internal.mlkit_vision_barcode;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public final class e {
    public static final e d = new e();
    public final Runnable a;
    public final Executor b;
    public e c;

    public e() {
        this.a = null;
        this.b = null;
    }

    public e(Runnable runnable, Executor executor) {
        this.a = runnable;
        this.b = executor;
    }
}
