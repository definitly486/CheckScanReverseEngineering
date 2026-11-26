package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class o77 implements pz3 {
    public final int a;
    public final String b;
    public final boolean c;
    public final a d;
    public final a e;
    public final ArrayList f;
    public final String g;

    public static final class a {
        public final String a;
        public final boolean b;
        public final boolean c;
        public final boolean d;

        public a(String str, boolean z, boolean z2, boolean z3) {
            str.getClass();
            this.a = str;
            this.b = z;
            this.c = z2;
            this.d = z3;
        }

        public static a a(a aVar, boolean z) {
            String str = aVar.a;
            boolean z2 = aVar.b;
            boolean z3 = aVar.c;
            aVar.getClass();
            str.getClass();
            return new a(str, z2, z3, z);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && this.b == aVar.b && this.c == aVar.c && this.d == aVar.d;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.d) + tg.c(tg.c(this.a.hashCode() * 31, 31, this.b), 31, this.c);
        }

        public final String toString() {
            StringBuilder sbB = p2.b("Button(title=", this.a, ", registrationRequired=", ", enabled=", this.b);
            sbB.append(this.c);
            sbB.append(", isLoading=");
            sbB.append(this.d);
            sbB.append(")");
            return sbB.toString();
        }
    }

    public o77(int i, String str, boolean z, a aVar, a aVar2, ArrayList arrayList, String str2) {
        str.getClass();
        this.a = i;
        this.b = str;
        this.c = z;
        this.d = aVar;
        this.e = aVar2;
        this.f = arrayList;
        this.g = str2;
    }

    public static o77 d(o77 o77Var, a aVar, a aVar2, int i) {
        int i2 = o77Var.a;
        String str = o77Var.b;
        boolean z = o77Var.c;
        if ((i & 8) != 0) {
            aVar = o77Var.d;
        }
        a aVar3 = aVar;
        if ((i & 16) != 0) {
            aVar2 = o77Var.e;
        }
        ArrayList arrayList = o77Var.f;
        String str2 = o77Var.g;
        str.getClass();
        return new o77(i2, str, z, aVar3, aVar2, arrayList, str2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o77)) {
            return false;
        }
        o77 o77Var = (o77) obj;
        return this.a == o77Var.a && aa4.e(this.b, o77Var.b) && this.c == o77Var.c && aa4.e(this.d, o77Var.d) && aa4.e(this.e, o77Var.e) && this.f.equals(o77Var.f) && aa4.e(this.g, o77Var.g);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.b + this.c + this.d + this.e + this.g + qn1.a0(this.f, null, null, null, 0, null, 63);
    }

    public final int hashCode() {
        int iC = tg.c(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c);
        a aVar = this.d;
        int iHashCode = (iC + (aVar == null ? 0 : aVar.hashCode())) * 31;
        a aVar2 = this.e;
        int iD = tg.d(this.f, (iHashCode + (aVar2 == null ? 0 : aVar2.hashCode())) * 31, 31);
        String str = this.g;
        return iD + (str != null ? str.hashCode() : 0);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Integer.valueOf(this.a);
    }

    public final String toString() {
        StringBuilder sbE = ng.e(this.a, "RewardedMultiTaskStepViewModel(id=", ", title=", this.b, ", isDone=");
        sbE.append(this.c);
        sbE.append(", actionButton=");
        sbE.append(this.d);
        sbE.append(", claimButton=");
        sbE.append(this.e);
        sbE.append(", badges=");
        sbE.append(this.f);
        sbE.append(", rewardSubtitle=");
        return me0.d(sbE, this.g, ")");
    }
}
