package defpackage;

import androidx.autofill.HintConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class ze1 {

    @bq7("receiptId")
    private final int a;

    @bq7("fullName")
    private final String b;

    @bq7(HintConstants.AUTOFILL_HINT_PHONE_NUMBER)
    private final String c;

    public ze1(int i, String str, String str2) {
        str.getClass();
        str2.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ze1)) {
            return false;
        }
        ze1 ze1Var = (ze1) obj;
        return this.a == ze1Var.a && aa4.e(this.b, ze1Var.b) && aa4.e(this.c, ze1Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + zg.b(Integer.hashCode(this.a) * 31, 31, this.b);
    }

    public final String toString() {
        int i = this.a;
        String str = this.b;
        return me0.d(ng.e(i, "ChequePersonalData(chequeId=", ", fullName=", str, ", phoneNumber="), this.c, ")");
    }
}
