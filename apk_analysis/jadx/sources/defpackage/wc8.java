package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class wc8 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;

    public wc8(String str, String str2, String str3, String str4, String str5) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        str5.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wc8)) {
            return false;
        }
        wc8 wc8Var = (wc8) obj;
        return aa4.e(this.a, wc8Var.a) && aa4.e(this.b, wc8Var.b) && aa4.e(this.c, wc8Var.c) && aa4.e(this.d, wc8Var.d) && aa4.e(this.e, wc8Var.e);
    }

    public final int hashCode() {
        return this.e.hashCode() + zg.b(zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d);
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("SubscriptionSplash(title=", this.a, ", text=", this.b, ", lottieUrl=");
        kv2.c(sbD, this.c, ", buttonTitle=", this.d, ", deeplink=");
        return me0.d(sbD, this.e, ")");
    }
}
