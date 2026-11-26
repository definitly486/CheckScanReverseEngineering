package defpackage;

import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class wgc {
    public int a;
    public final int b;
    public wgc c;
    public final HashMap d = new HashMap(0);

    public wgc(int i, int i2) {
        if (i > i2) {
            mi2.b();
            throw null;
        }
        this.a = i;
        this.b = i2;
        this.c = null;
    }

    public final String toString() {
        int iIdentityHashCode = System.identityHashCode(this);
        return ag.d(new StringBuilder(String.valueOf(iIdentityHashCode).length() + 4), "Node", iIdentityHashCode);
    }
}
