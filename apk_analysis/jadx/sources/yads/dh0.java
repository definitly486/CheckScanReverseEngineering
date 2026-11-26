package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class dh0 implements gh0 {
    public final String a;

    public dh0(String str) {
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof dh0) && defpackage.aa4.e(this.a, ((dh0) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return defpackage.me0.c("Message(text=", this.a, ")");
    }
}
