package defpackage;

import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes.dex */
public final class aa9 {

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String a;

    @bq7("url")
    private final String b;

    public aa9(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof aa9)) {
            return false;
        }
        aa9 aa9Var = (aa9) obj;
        return aa4.e(this.a, aa9Var.a) && aa4.e(this.b, aa9Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return n2.d("UserPolicyResponse(title=", this.a, ", url=", this.b, ")");
    }
}
