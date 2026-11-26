package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class a20 extends f20 {
    public final boolean a;

    public a20(boolean z) {
        this.a = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof a20) && this.a == ((a20) obj).a;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.a);
    }

    public final String toString() {
        return defpackage.l2.c("CmpPresent(value=", ")", this.a);
    }
}
