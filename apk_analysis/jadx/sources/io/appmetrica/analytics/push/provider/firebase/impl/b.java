package io.appmetrica.analytics.push.provider.firebase.impl;

import defpackage.cl4;
import defpackage.fh8;

/* JADX INFO: loaded from: classes5.dex */
public final class b {
    public final String a;
    public final Throwable b;
    public final cl4 c;

    public b(String str, Throwable th) {
        this.a = str;
        this.b = th;
        this.c = new fh8(new a(this));
    }

    public /* synthetic */ b(String str, Throwable th, int i) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : th);
    }
}
