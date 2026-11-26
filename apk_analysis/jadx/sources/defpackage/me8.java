package defpackage;

import com.google.firebase.messaging.Constants;

/* JADX INFO: loaded from: classes5.dex */
public final class me8 {

    @bq7(Constants.ScionAnalytics.PARAM_LABEL)
    private final String a;

    @bq7("placeholder")
    private final String b;

    public me8(String str, String str2) {
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
        if (!(obj instanceof me8)) {
            return false;
        }
        me8 me8Var = (me8) obj;
        return aa4.e(this.a, me8Var.a) && aa4.e(this.b, me8Var.b);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return n2.d("SupportFormFieldResponse(label=", this.a, ", placeholder=", this.b, ")");
    }
}
