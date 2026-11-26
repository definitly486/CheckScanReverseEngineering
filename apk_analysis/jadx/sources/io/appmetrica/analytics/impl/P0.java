package io.appmetrica.analytics.impl;

import android.content.Intent;

/* JADX INFO: loaded from: classes5.dex */
public final class P0 implements Runnable {
    public final /* synthetic */ Intent a;
    public final /* synthetic */ C1370x1 b;

    public P0(C1370x1 c1370x1, Intent intent) {
        this.b = c1370x1;
        this.a = intent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        K7 k7 = this.b.c().b;
        Intent intent = this.a;
        k7.getClass();
        if (intent != null) {
            k7.a(intent.getDataString(), false);
        }
    }
}
