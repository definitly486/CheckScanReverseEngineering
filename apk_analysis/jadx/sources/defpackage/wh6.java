package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class wh6 {
    public final int a;

    public wh6(int i) {
        this.a = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof wh6) && this.a == ((wh6) obj).a;
    }

    public final int hashCode() {
        return Integer.hashCode(this.a);
    }

    public final String toString() {
        return kv2.b(this.a, "ProductLinkChecker(id=", ")");
    }
}
