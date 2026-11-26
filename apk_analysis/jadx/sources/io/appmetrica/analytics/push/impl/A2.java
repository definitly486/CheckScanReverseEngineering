package io.appmetrica.analytics.push.impl;

/* JADX INFO: loaded from: classes5.dex */
public final class A2 extends RuntimeException {
    public final String a;
    public final String b;

    public A2(String str, String str2) {
        super(defpackage.n2.d("Transform failure for category '", str, "' with details '", str2, "'"));
        this.a = str;
        this.b = str2;
    }
}
