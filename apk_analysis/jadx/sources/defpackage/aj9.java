package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class aj9 implements pz3 {
    public final String a;
    public final String b;
    public final String c;

    public aj9(String str, String str2, String str3) {
        str.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof aj9)) {
            return false;
        }
        aj9 aj9Var = (aj9) obj;
        return aa4.e(this.a, aj9Var.a) && aa4.e(this.b, aj9Var.b) && aa4.e(this.c, aj9Var.c);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return cg.d(this.a, this.b, this.c);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.c;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return ni0.c(this.a, this.b);
    }

    public final String toString() {
        return me0.d(ad2.d("WithdrawalBalanceBlockViewModel(title=", this.a, ", subtitle=", this.b, ", buttonTitle="), this.c, ")");
    }
}
