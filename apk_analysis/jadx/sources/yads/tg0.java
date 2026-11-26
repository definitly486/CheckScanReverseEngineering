package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class tg0 implements ah0 {
    public final String a;

    public tg0(String str) {
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof tg0) && defpackage.aa4.e(this.a, ((tg0) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return defpackage.me0.c("OnAdUnitClick(id=", this.a, ")");
    }
}
