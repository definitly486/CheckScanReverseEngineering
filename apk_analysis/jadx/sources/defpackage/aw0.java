package defpackage;

import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes.dex */
public final class aw0 {

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String a;

    @bq7("logoUrl")
    private final String b;

    @bq7("deepLink")
    private final String c;

    public aw0(String str, String str2, String str3) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public final String a() {
        return this.c;
    }

    public final String b() {
        return this.a;
    }

    public final String c() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof aw0)) {
            return false;
        }
        aw0 aw0Var = (aw0) obj;
        return aa4.e(this.a, aw0Var.a) && aa4.e(this.b, aw0Var.b) && aa4.e(this.c, aw0Var.c);
    }

    public final int hashCode() {
        int iB = zg.b(this.a.hashCode() * 31, 31, this.b);
        String str = this.c;
        return iB + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        return me0.d(ad2.d("ButtonResponse(title=", str, ", url=", str2, ", deeplink="), this.c, ")");
    }
}
