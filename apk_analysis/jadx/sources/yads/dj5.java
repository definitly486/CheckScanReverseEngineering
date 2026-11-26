package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class dj5 {
    public final String a;

    public dj5(String str) {
        this.a = str;
    }

    public final String a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof dj5) && defpackage.aa4.e(this.a, ((dj5) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return defpackage.me0.c("SessionParameters(token=", this.a, ")");
    }
}
