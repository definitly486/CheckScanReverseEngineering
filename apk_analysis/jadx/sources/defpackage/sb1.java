package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class sb1 implements pz3 {
    public final String a;
    public final int b;
    public final List<fc1> c;
    public final boolean d;
    public final a e;
    public final String f;

    public static final class a {
        public final String a;
        public final boolean b;
        public final boolean c;
        public final boolean d;
        public final boolean e;

        public a(String str, boolean z, boolean z2, boolean z3, boolean z4) {
            this.a = str;
            this.b = z;
            this.c = z2;
            this.d = z3;
            this.e = z4;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a.equals(aVar.a) && this.b == aVar.b && this.c == aVar.c && this.d == aVar.d && this.e == aVar.e;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.e) + tg.c(tg.c(tg.c(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d);
        }

        public final String toString() {
            StringBuilder sbB = p2.b("Button(text=", this.a, ", isButtonVisible=", ", isEnabled=", this.b);
            sbB.append(this.c);
            sbB.append(", isLoading=");
            sbB.append(this.d);
            sbB.append(", isRegistrationRequired=");
            return dh.e(sbB, this.e, ")");
        }
    }

    public sb1(String str, int i, List<fc1> list, boolean z, a aVar, String str2) {
        str.getClass();
        this.a = str;
        this.b = i;
        this.c = list;
        this.d = z;
        this.e = aVar;
        this.f = str2;
    }

    public static sb1 d(sb1 sb1Var, ArrayList arrayList, a aVar, int i) {
        String str = sb1Var.a;
        int i2 = sb1Var.b;
        List<fc1> list = arrayList;
        if ((i & 4) != 0) {
            list = sb1Var.c;
        }
        List<fc1> list2 = list;
        boolean z = sb1Var.d;
        if ((i & 16) != 0) {
            aVar = sb1Var.e;
        }
        String str2 = sb1Var.f;
        str.getClass();
        return new sb1(str, i2, list2, z, aVar, str2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof sb1)) {
            return false;
        }
        sb1 sb1Var = (sb1) obj;
        return aa4.e(this.a, sb1Var.a) && this.b == sb1Var.b && this.c.equals(sb1Var.c) && this.d == sb1Var.d && this.e.equals(sb1Var.e) && aa4.e(this.f, sb1Var.f);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.a + this.e + this.b + qn1.a0(this.c, null, null, null, 0, null, 63) + this.d + this.f;
    }

    public final int hashCode() {
        int iHashCode = (this.e.hashCode() + tg.c(e2.b(this.c, ej0.b(this.b, this.a.hashCode() * 31, 31), 31), 31, this.d)) * 31;
        String str = this.f;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    @Override // defpackage.pz3
    public final Object id() {
        return bj.c("CHECKBOX_BLOCK_", this.a);
    }

    public final String toString() {
        StringBuilder sbA = mz0.a(this.b, "CheckboxTaskStepsCheckboxBlockViewModel(title=", this.a, ", subtaskId=", ", checkboxes=");
        sbA.append(this.c);
        sbA.append(", isCompleted=");
        sbA.append(this.d);
        sbA.append(", button=");
        sbA.append(this.e);
        sbA.append(", description=");
        sbA.append(this.f);
        sbA.append(")");
        return sbA.toString();
    }
}
