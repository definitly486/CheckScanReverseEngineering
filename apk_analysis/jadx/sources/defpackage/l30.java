package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class l30 implements pz3 {
    public final String a;
    public final String b;
    public final String c;
    public final a d;
    public final String e;
    public final w00 f;

    public static final class a implements pz3 {
        public final String a;
        public final String b;
        public final int c;
        public final int d;

        public a(String str, String str2, int i, int i2) {
            str.getClass();
            str2.getClass();
            this.a = str;
            this.b = str2;
            this.c = i;
            this.d = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b) && this.c == aVar.c && this.d == aVar.d;
        }

        @Override // defpackage.pz3
        public final Object f() {
            return (byte) 127;
        }

        public final int hashCode() {
            return Integer.hashCode(this.d) + ej0.b(this.c, zg.b(this.a.hashCode() * 31, 31, this.b), 31);
        }

        @Override // defpackage.pz3
        public final Object id() {
            return (byte) 127;
        }

        public final String toString() {
            StringBuilder sbD = ad2.d("WaysCashBackViewModel(logoUrl=", this.a, ", text=", this.b, ", textColor=");
            sbD.append(this.c);
            sbD.append(", backgroundColor=");
            sbD.append(this.d);
            sbD.append(")");
            return sbD.toString();
        }
    }

    public l30(String str, String str2, String str3, a aVar, String str4, w00 w00Var) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = aVar;
        this.e = str4;
        this.f = w00Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l30)) {
            return false;
        }
        l30 l30Var = (l30) obj;
        return aa4.e(this.a, l30Var.a) && aa4.e(this.b, l30Var.b) && this.c.equals(l30Var.c) && aa4.e(this.d, l30Var.d) && this.e.equals(l30Var.e) && aa4.e(this.f, l30Var.f);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.b + this.c + this.d + this.e;
    }

    public final int hashCode() {
        int iB = zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c);
        a aVar = this.d;
        int iB2 = zg.b((iB + (aVar == null ? 0 : aVar.hashCode())) * 31, 31, this.e);
        w00 w00Var = this.f;
        return iB2 + (w00Var != null ? w00Var.hashCode() : 0);
    }

    @Override // defpackage.pz3
    public final /* bridge */ /* synthetic */ Object id() {
        return (byte) 127;
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("BalanceHeaderViewModel(title=", this.a, ", sum=", this.b, ", pendingSum=");
        sbD.append(this.c);
        sbD.append(", waysModel=");
        sbD.append(this.d);
        sbD.append(", withdrawCardButtonTitle=");
        sbD.append(this.e);
        sbD.append(", accrual=");
        sbD.append(this.f);
        sbD.append(")");
        return sbD.toString();
    }
}
