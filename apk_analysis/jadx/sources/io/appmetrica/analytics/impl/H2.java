package io.appmetrica.analytics.impl;

import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes5.dex */
public final class H2 implements Runnable {
    public final /* synthetic */ Context a;
    public final /* synthetic */ Intent b;
    public final /* synthetic */ I2 c;

    public H2(I2 i2, Context context, Intent intent) {
        this.c = i2;
        this.a = context;
        this.b = intent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.c.a.consume(this.a, this.b);
    }
}
