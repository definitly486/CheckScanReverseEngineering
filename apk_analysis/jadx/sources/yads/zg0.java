package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class zg0 implements ah0 {
    public final String a;

    public zg0(String str) {
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof zg0) && defpackage.aa4.e(this.a, ((zg0) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return defpackage.me0.c("OnWarningButtonClick(waring=", this.a, ")");
    }
}
