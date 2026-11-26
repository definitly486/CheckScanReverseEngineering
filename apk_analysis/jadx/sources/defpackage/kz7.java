package defpackage;

import com.warefly.checkscan.tasks.presentation.flows.TasksReason;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class kz7 implements fm8 {
    public final int a;
    public final String b;
    public final String c;
    public final String d;
    public final List<rl8> e;
    public final boolean f;
    public final boolean g;
    public final boolean h;
    public final boolean i;
    public final TasksReason j;
    public final String k;
    public final boolean l;
    public final pw7 m;

    public kz7(int i, String str, String str2, String str3, List<rl8> list, boolean z, boolean z2, boolean z3, boolean z4, TasksReason tasksReason, String str4, boolean z5, pw7 pw7Var) {
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = list;
        this.f = z;
        this.g = z2;
        this.h = z3;
        this.i = z4;
        this.j = tasksReason;
        this.k = str4;
        this.l = z5;
        this.m = pw7Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof kz7)) {
            return false;
        }
        kz7 kz7Var = (kz7) obj;
        return this.a == kz7Var.a && this.b.equals(kz7Var.b) && this.c.equals(kz7Var.c) && aa4.e(this.d, kz7Var.d) && this.e.equals(kz7Var.e) && this.f == kz7Var.f && this.g == kz7Var.g && this.h == kz7Var.h && this.i == kz7Var.i && this.j.equals(kz7Var.j) && aa4.e(this.k, kz7Var.k) && this.l == kz7Var.l && aa4.e(this.m, kz7Var.m);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.c + this.b + this.f + this.g + qn1.a0(this.e, null, null, null, 0, null, 63) + this.d + this.h + this.j + this.i + this.k + this.a + this.l;
    }

    public final int hashCode() {
        int iB = zg.b(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c);
        String str = this.d;
        int iHashCode = (this.j.hashCode() + tg.c(tg.c(tg.c(tg.c(e2.b(this.e, (iB + (str == null ? 0 : str.hashCode())) * 31, 31), 31, this.f), 31, this.g), 31, this.h), 31, this.i)) * 31;
        String str2 = this.k;
        int iC = tg.c((iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31, 31, this.l);
        pw7 pw7Var = this.m;
        return iC + (pw7Var != null ? pw7Var.hashCode() : 0);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Integer.valueOf(this.a);
    }

    @Override // defpackage.fm8
    public final boolean isDone() {
        return this.f;
    }

    public final String toString() {
        StringBuilder sbE = ng.e(this.a, "SimpleTaskCardViewModel(id=", ", iconUrl=", this.b, ", title=");
        kv2.c(sbE, this.c, ", subtitle=", this.d, ", badges=");
        sbE.append(this.e);
        sbE.append(", isDone=");
        sbE.append(this.f);
        sbE.append(", enabled=");
        sbE.append(this.g);
        sbE.append(", isRewardAvailable=");
        sbE.append(this.h);
        sbE.append(", isClaimRewardLoading=");
        sbE.append(this.i);
        sbE.append(", direction=");
        sbE.append(this.j);
        sbE.append(", counterText=");
        ud.f(sbE, this.k, ", skipDetails=", this.l, ", analytics=");
        sbE.append(this.m);
        sbE.append(")");
        return sbE.toString();
    }
}
