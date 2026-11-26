package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class e20 extends f20 {
    public final String a;

    public e20(String str) {
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof e20) && defpackage.aa4.e(this.a, ((e20) obj).a);
    }

    public final int hashCode() {
        String str = this.a;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public final String toString() {
        return defpackage.me0.c("VendorConsents(value=", this.a, ")");
    }
}
