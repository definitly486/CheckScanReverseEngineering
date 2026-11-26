package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class cp5 implements qp5 {
    public final int a;
    public final String b;
    public final String c;
    public final String d;
    public final boolean e;
    public final boolean f;
    public final String g;
    public final a h;
    public final b06 i;
    public final String j;
    public final Float k;

    public static final class a {
        public final String a;
        public final String b;

        public a(String str, String str2) {
            str.getClass();
            this.a = str;
            this.b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b);
        }

        public final int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            String str = this.b;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            return n2.d("Button(title=", this.a, ", deeplink=", this.b, ")");
        }
    }

    public cp5(int i, String str, String str2, String str3, boolean z, boolean z2, String str4, a aVar, b06 b06Var, String str5, Float f) {
        x7.b(str, str2, str3);
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = z;
        this.f = z2;
        this.g = str4;
        this.h = aVar;
        this.i = b06Var;
        this.j = str5;
        this.k = f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cp5)) {
            return false;
        }
        cp5 cp5Var = (cp5) obj;
        return this.a == cp5Var.a && aa4.e(this.b, cp5Var.b) && aa4.e(this.c, cp5Var.c) && aa4.e(this.d, cp5Var.d) && this.e == cp5Var.e && this.f == cp5Var.f && aa4.e(this.g, cp5Var.g) && aa4.e(this.h, cp5Var.h) && aa4.e(this.i, cp5Var.i) && aa4.e(this.j, cp5Var.j) && aa4.e(this.k, cp5Var.k);
    }

    @Override // defpackage.pz3
    public final Object f() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.b);
        sb.append(this.c);
        sb.append(this.d);
        sb.append(this.h);
        sb.append(this.e);
        return dh.e(sb, this.f, this.j);
    }

    public final int hashCode() {
        int iC = tg.c(tg.c(zg.b(zg.b(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e), 31, this.f);
        String str = this.g;
        int iHashCode = (iC + (str == null ? 0 : str.hashCode())) * 31;
        a aVar = this.h;
        int iHashCode2 = (iHashCode + (aVar == null ? 0 : aVar.hashCode())) * 31;
        b06 b06Var = this.i;
        int iHashCode3 = (iHashCode2 + (b06Var == null ? 0 : b06Var.hashCode())) * 31;
        String str2 = this.j;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Float f = this.k;
        return iHashCode4 + (f != null ? f.hashCode() : 0);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Integer.valueOf(this.a);
    }

    public final String toString() {
        StringBuilder sbE = ng.e(this.a, "NotificationViewModel(id=", ", title=", this.b, ", body=");
        kv2.c(sbE, this.c, ", date=", this.d, ", isRead=");
        sbE.append(this.e);
        sbE.append(", agreementRequired=");
        sbE.append(this.f);
        sbE.append(", banner=");
        sbE.append(this.g);
        sbE.append(", button=");
        sbE.append(this.h);
        sbE.append(", ordInfo=");
        sbE.append(this.i);
        sbE.append(", deeplink=");
        sbE.append(this.j);
        sbE.append(", aspectRatio=");
        sbE.append(this.k);
        sbE.append(")");
        return sbE.toString();
    }
}
