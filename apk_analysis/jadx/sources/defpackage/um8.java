package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class um8 {
    public final int a;
    public final String b;
    public final ArrayList c;
    public final String d;
    public final String e;
    public final a f;
    public final b g;
    public final b06 h;
    public final com.warefly.checkscan.shared.infoBottomSheet.presentation.b i;
    public final boolean j;

    public static final class a {
        public final String a;
        public final boolean b;
        public final boolean c;

        public a(String str, boolean z, boolean z2) {
            str.getClass();
            this.a = str;
            this.b = z;
            this.c = z2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && this.b == aVar.b && this.c == aVar.c;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.c) + tg.c(this.a.hashCode() * 31, 31, this.b);
        }

        public final String toString() {
            return dh.e(p2.b("ActionButton(title=", this.a, ", enabled=", ", registerRequired=", this.b), this.c, ")");
        }
    }

    public static final class b {
        public final String a;
        public final long b;
        public final boolean c;

        public b(String str, long j, boolean z) {
            str.getClass();
            this.a = str;
            this.b = j;
            this.c = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return aa4.e(this.a, bVar.a) && this.b == bVar.b && this.c == bVar.c;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.c) + vg.b(this.a.hashCode() * 31, 31, this.b);
        }

        public final String toString() {
            return "CheckButton(title=" + this.a + ", timeLeft=" + this.b + ", enabled=" + this.c + ")";
        }
    }

    public um8(int i, String str, ArrayList arrayList, String str2, String str3, a aVar, b bVar, b06 b06Var, com.warefly.checkscan.shared.infoBottomSheet.presentation.b bVar2, boolean z) {
        x7.b(str, str2, str3);
        this.a = i;
        this.b = str;
        this.c = arrayList;
        this.d = str2;
        this.e = str3;
        this.f = aVar;
        this.g = bVar;
        this.h = b06Var;
        this.i = bVar2;
        this.j = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof um8)) {
            return false;
        }
        um8 um8Var = (um8) obj;
        return this.a == um8Var.a && aa4.e(this.b, um8Var.b) && this.c.equals(um8Var.c) && aa4.e(this.d, um8Var.d) && aa4.e(this.e, um8Var.e) && this.f.equals(um8Var.f) && this.g.equals(um8Var.g) && aa4.e(this.h, um8Var.h) && aa4.e(this.i, um8Var.i) && this.j == um8Var.j;
    }

    public final int hashCode() {
        int iHashCode = (this.g.hashCode() + ((this.f.hashCode() + zg.b(zg.b(tg.d(this.c, zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31), 31, this.d), 31, this.e)) * 31)) * 31;
        b06 b06Var = this.h;
        int iHashCode2 = (iHashCode + (b06Var == null ? 0 : b06Var.hashCode())) * 31;
        com.warefly.checkscan.shared.infoBottomSheet.presentation.b bVar = this.i;
        return Boolean.hashCode(this.j) + ((iHashCode2 + (bVar != null ? bVar.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sbE = ng.e(this.a, "TaskDetails(id=", ", logoUrl=", this.b, ", items=");
        sbE.append(this.c);
        sbE.append(", title=");
        sbE.append(this.d);
        sbE.append(", description=");
        sbE.append(this.e);
        sbE.append(", actionButton=");
        sbE.append(this.f);
        sbE.append(", checkButton=");
        sbE.append(this.g);
        sbE.append(", ordInfo=");
        sbE.append(this.h);
        sbE.append(", infoBadge=");
        sbE.append(this.i);
        sbE.append(", skipDetails=");
        sbE.append(this.j);
        sbE.append(")");
        return sbE.toString();
    }
}
