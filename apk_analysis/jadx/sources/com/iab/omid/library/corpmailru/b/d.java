package com.iab.omid.library.corpmailru.b;

import android.content.Context;

/* JADX INFO: loaded from: classes4.dex */
public class d {
    private static d a = new d();
    private Context b;

    private d() {
    }

    public void a(Context context) {
        this.b = context != null ? context.getApplicationContext() : null;
    }

    public Context b() {
        return this.b;
    }

    public static d a() {
        return a;
    }
}
