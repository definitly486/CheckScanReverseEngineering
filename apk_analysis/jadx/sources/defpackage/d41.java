package defpackage;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class d41 {

    @bq7(RemoteConfigConstants.ResponseFieldKey.STATE)
    private final b41 a;

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String b;

    @bq7("subtitle")
    private final String c;

    @bq7("isSuccessBannerShown")
    private final Boolean d;

    @bq7("tokenize")
    private final boolean e;

    public d41(b41 b41Var, String str, String str2, Boolean bool, boolean z) {
        b41Var.getClass();
        str.getClass();
        str2.getClass();
        this.a = b41Var;
        this.b = str;
        this.c = str2;
        this.d = bool;
        this.e = z;
    }

    public final b41 a() {
        return this.a;
    }

    public final String b() {
        return this.c;
    }

    public final String c() {
        return this.b;
    }

    public final boolean d() {
        return this.e;
    }

    public final Boolean e() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d41)) {
            return false;
        }
        d41 d41Var = (d41) obj;
        return this.a == d41Var.a && aa4.e(this.b, d41Var.b) && aa4.e(this.c, d41Var.c) && aa4.e(this.d, d41Var.d) && this.e == d41Var.e;
    }

    public final int hashCode() {
        int iB = zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c);
        Boolean bool = this.d;
        return Boolean.hashCode(this.e) + ((iB + (bool == null ? 0 : bool.hashCode())) * 31);
    }

    public final String toString() {
        b41 b41Var = this.a;
        String str = this.b;
        String str2 = this.c;
        Boolean bool = this.d;
        boolean z = this.e;
        StringBuilder sb = new StringBuilder("CardStateResponse(state=");
        sb.append(b41Var);
        sb.append(", title=");
        sb.append(str);
        sb.append(", subtitle=");
        sb.append(str2);
        sb.append(", isSuccessBannerShown=");
        sb.append(bool);
        sb.append(", tokenize=");
        return dh.e(sb, z, ")");
    }
}
