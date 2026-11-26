package defpackage;

import androidx.autofill.HintConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class w99 {

    @bq7(HintConstants.AUTOFILL_HINT_USERNAME)
    private final String a;

    @bq7(HintConstants.AUTOFILL_HINT_PASSWORD)
    private final String b;

    public w99(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
    }

    public final String a() {
        return this.b;
    }

    public final String b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w99)) {
            return false;
        }
        w99 w99Var = (w99) obj;
        return aa4.e(this.a, w99Var.a) && aa4.e(this.b, w99Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return n2.d("UserLogInData(username=", this.a, ", password=", this.b, ")");
    }
}
