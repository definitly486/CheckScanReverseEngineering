package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class d20 extends f20 {
    public final String a;

    public d20(String str) {
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof d20) && defpackage.aa4.e(this.a, ((d20) obj).a);
    }

    public final int hashCode() {
        String str = this.a;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public final String toString() {
        return defpackage.me0.c("PurposeConsents(value=", this.a, ")");
    }
}
