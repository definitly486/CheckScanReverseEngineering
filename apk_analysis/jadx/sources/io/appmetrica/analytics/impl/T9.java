package io.appmetrica.analytics.impl;

import defpackage.ha1;

/* JADX INFO: loaded from: classes5.dex */
public abstract class T9 {
    public static final N9 a(int i, String str) {
        byte[] bytes;
        N9 n9 = new N9();
        n9.a = i;
        if (str == null || (bytes = str.getBytes(ha1.b)) == null) {
            bytes = n9.b;
        }
        n9.b = bytes;
        return n9;
    }
}
