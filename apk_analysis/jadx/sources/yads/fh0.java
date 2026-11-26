package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class fh0 implements gh0 {
    public final String a;

    public fh0(String str) {
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof fh0) && defpackage.aa4.e(this.a, ((fh0) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode() + 562735108;
    }

    public final String toString() {
        return defpackage.me0.c("Warning(title=Warning, message=", this.a, ")");
    }
}
