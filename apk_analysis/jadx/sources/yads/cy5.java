package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class cy5 implements rz5 {
    public final String a;

    public cy5(String str) {
        this.a = str;
    }

    public final String a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof cy5) && defpackage.aa4.e(this.a, ((cy5) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return defpackage.me0.c("Function(name=", this.a, ")");
    }
}
