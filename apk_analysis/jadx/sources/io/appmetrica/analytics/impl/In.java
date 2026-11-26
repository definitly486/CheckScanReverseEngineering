package io.appmetrica.analytics.impl;

import defpackage.aa4;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class In {
    public final String a;
    public final long b;
    public final byte[] c;

    public In(String str, long j, byte[] bArr) {
        this.a = str;
        this.b = j;
        this.c = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!In.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        In in = (In) obj;
        if (aa4.e(this.a, in.a) && this.b == in.b) {
            return Arrays.equals(this.c, in.c);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.c) + defpackage.vg.b(this.a.hashCode() * 31, 31, this.b);
    }

    public final String toString() {
        return "TempCachePutTask(scope='" + this.a + "', timestamp=" + this.b + ", data=" + this.c + ')';
    }
}
