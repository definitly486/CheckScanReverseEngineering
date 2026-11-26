package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class xg3 implements ah3 {
    public final String a;

    public xg3(String str) {
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof xg3) && defpackage.aa4.e(this.a, ((xg3) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return defpackage.me0.c("Failure(message=", this.a, ")");
    }
}
