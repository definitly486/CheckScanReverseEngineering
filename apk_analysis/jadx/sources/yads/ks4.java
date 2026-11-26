package yads;

import defpackage.kv2;

/* JADX INFO: loaded from: classes6.dex */
public final class ks4 implements ai2 {
    public final int a;

    public ks4(int i) {
        this.a = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ks4) && this.a == ((ks4) obj).a;
    }

    public final int hashCode() {
        return Integer.hashCode(this.a);
    }

    public final String toString() {
        return kv2.b(this.a, "PagerState(currentPageIndex=", ")");
    }
}
