package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class s56 implements w56 {
    public final List<a> a;
    public final String b;
    public final a c;
    public final String d;
    public final Integer e;
    public final String f;
    public final boolean g;
    public final boolean h;
    public final String i;
    public final String j;
    public final boolean k;

    public static final class a {
        public final String a;
        public final String b;
        public final String c;
        public final String d;
        public final boolean e;
        public final List<w56> f;

        /* JADX WARN: Multi-variable type inference failed */
        public a(String str, String str2, String str3, String str4, boolean z, List<? extends w56> list) {
            m2.e(str, str2, str3, str4);
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = str4;
            this.e = z;
            this.f = list;
        }

        public static a a(a aVar, boolean z) {
            String str = aVar.a;
            String str2 = aVar.b;
            String str3 = aVar.c;
            String str4 = aVar.d;
            List<w56> list = aVar.f;
            str.getClass();
            str2.getClass();
            str3.getClass();
            str4.getClass();
            return new a(str, str2, str3, str4, z, list);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c) && aa4.e(this.d, aVar.d) && this.e == aVar.e && this.f.equals(aVar.f);
        }

        public final int hashCode() {
            return this.f.hashCode() + tg.c(zg.b(zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e);
        }

        public final String toString() {
            StringBuilder sbD = ad2.d("Option(blockKey=", this.a, ", parentKey=", this.b, ", key=");
            kv2.c(sbD, this.c, ", title=", this.d, ", selected=");
            sbD.append(this.e);
            sbD.append(", subQuestions=");
            sbD.append(this.f);
            sbD.append(")");
            return sbD.toString();
        }
    }

    public s56(List<a> list, String str, a aVar, String str2, Integer num, String str3, boolean z, boolean z2, String str4, String str5, boolean z3) {
        x7.b(str, str3, str4);
        this.a = list;
        this.b = str;
        this.c = aVar;
        this.d = str2;
        this.e = num;
        this.f = str3;
        this.g = z;
        this.h = z2;
        this.i = str4;
        this.j = str5;
        this.k = z3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s56)) {
            return false;
        }
        s56 s56Var = (s56) obj;
        return this.a.equals(s56Var.a) && aa4.e(this.b, s56Var.b) && aa4.e(this.c, s56Var.c) && aa4.e(this.d, s56Var.d) && aa4.e(this.e, s56Var.e) && aa4.e(this.f, s56Var.f) && this.g == s56Var.g && this.h == s56Var.h && aa4.e(this.i, s56Var.i) && this.j.equals(s56Var.j) && this.k == s56Var.k;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.g + this.h + this.i + this.j + this.k + qn1.a0(this.a, null, null, null, 0, null, 63) + this.c;
    }

    @Override // defpackage.w56
    public final String getKey() {
        return this.f;
    }

    @Override // defpackage.w56
    public final String getValue() {
        return this.i;
    }

    @Override // defpackage.w56
    public final boolean h() {
        return this.k;
    }

    public final int hashCode() {
        int iB = zg.b(this.a.hashCode() * 31, 31, this.b);
        a aVar = this.c;
        int iHashCode = (iB + (aVar == null ? 0 : aVar.hashCode())) * 31;
        String str = this.d;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.e;
        return Boolean.hashCode(this.k) + zg.b(zg.b(tg.c(tg.c(zg.b((iHashCode2 + (num != null ? num.hashCode() : 0)) * 31, 31, this.f), 31, this.g), 31, this.h), 31, this.i), 31, this.j);
    }

    @Override // defpackage.w56
    public final String i() {
        return this.j;
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.f;
    }

    @Override // defpackage.w56
    public final boolean j() {
        return this.g;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PersonalDataFormDropDownViewModel(options=");
        sb.append(this.a);
        sb.append(", title=");
        sb.append(this.b);
        sb.append(", selectedOption=");
        sb.append(this.c);
        sb.append(", hint=");
        sb.append(this.d);
        sb.append(", icon=");
        sb.append(this.e);
        sb.append(", key=");
        sb.append(this.f);
        sb.append(", isError=");
        sb.append(this.g);
        sb.append(", isRequired=");
        sb.append(this.h);
        sb.append(", value=");
        kv2.c(sb, this.i, ", oldValue=", this.j, ", skip=");
        return dh.e(sb, this.k, ")");
    }
}
