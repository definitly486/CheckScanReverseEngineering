package com.google.android.gms.tasks;

import defpackage.iwa;

/* JADX INFO: loaded from: classes4.dex */
public class CancellationTokenSource {
    public final iwa a = new iwa();

    public void cancel() {
        this.a.a.b(null);
    }

    public CancellationToken getToken() {
        return this.a;
    }
}
