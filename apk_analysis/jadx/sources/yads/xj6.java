package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class xj6 {
    public final zj6 a;

    public xj6() {
        this.a = zj6.DEFAULT;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof xj6) && this.a == ((xj6) obj).a;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "WebViewAdSettings(cacheMode=" + this.a + ")";
    }

    public xj6(zj6 zj6Var) {
        this.a = zj6Var;
    }
}
