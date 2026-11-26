package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class o66 implements w56 {
    public final String a;
    public final List<j56> b;
    public final String c;
    public final String d;
    public final boolean e;
    public final boolean f;
    public final String g;
    public final boolean h;

    public o66(String str, List<j56> list, String str2, String str3, boolean z, boolean z2, String str4, boolean z3) {
        x7.b(str, str3, str4);
        this.a = str;
        this.b = list;
        this.c = str2;
        this.d = str3;
        this.e = z;
        this.f = z2;
        this.g = str4;
        this.h = z3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o66)) {
            return false;
        }
        o66 o66Var = (o66) obj;
        return aa4.e(this.a, o66Var.a) && this.b.equals(o66Var.b) && this.c.equals(o66Var.c) && aa4.e(this.d, o66Var.d) && this.e == o66Var.e && this.f == o66Var.f && aa4.e(this.g, o66Var.g) && this.h == o66Var.h;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return qn1.i0(Boolean.valueOf(this.h), qn1.i0(this.g, qn1.i0(this.d, qn1.i0(this.c, this.b))));
    }

    @Override // defpackage.w56
    public final String getKey() {
        return this.d;
    }

    @Override // defpackage.w56
    public final String getValue() {
        return this.g;
    }

    @Override // defpackage.w56
    public final boolean h() {
        return this.h;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.h) + zg.b(tg.c(tg.c(zg.b(zg.b(e2.b(this.b, this.a.hashCode() * 31, 31), 31, this.c), 31, this.d), 31, this.e), 31, this.f), 31, this.g);
    }

    @Override // defpackage.w56
    public final String i() {
        return this.c;
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.d;
    }

    @Override // defpackage.w56
    public final boolean j() {
        return this.e;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PersonalDataFormSingleChoiceChipSelectionViewModel(title=");
        sb.append(this.a);
        sb.append(", chips=");
        sb.append(this.b);
        sb.append(", oldValue=");
        kv2.c(sb, this.c, ", key=", this.d, ", isError=");
        sb.append(this.e);
        sb.append(", isRequired=");
        sb.append(this.f);
        sb.append(", value=");
        sb.append(this.g);
        sb.append(", skip=");
        sb.append(this.h);
        sb.append(")");
        return sb.toString();
    }
}
