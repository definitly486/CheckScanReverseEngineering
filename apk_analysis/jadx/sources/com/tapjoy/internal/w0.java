package com.tapjoy.internal;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes4.dex */
public final class w0 {
    public final Long a;
    public final r1 b;

    public w0() {
        r1 r1Var = new r1();
        this.a = null;
        this.b = r1Var;
        this.a = Long.valueOf(SystemClock.elapsedRealtime() / 1000);
    }
}
