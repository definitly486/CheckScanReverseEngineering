package io.appmetrica.analytics.impl;

import defpackage.aa4;

/* JADX INFO: loaded from: classes5.dex */
public final class K7 {
    public final Wa a;
    public String b = "";

    public K7(Wa wa) {
        this.a = wa;
    }

    public final void a(String str, boolean z) {
        if (str != null) {
            if ((str.length() > 0 ? str : null) == null || aa4.e(this.b, str)) {
                return;
            }
            this.b = str;
            this.a.a(str, z);
        }
    }
}
