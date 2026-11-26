package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class j39 implements sx1, ld0.a {
    public final boolean a;
    public final ArrayList b = new ArrayList();
    public final fs7.a c;
    public final tc3 d;
    public final tc3 e;
    public final tc3 f;

    public j39(nd0 nd0Var, fs7 fs7Var) {
        this.a = fs7Var.e;
        this.c = fs7Var.a;
        tc3 tc3VarA = fs7Var.b.a();
        this.d = tc3VarA;
        tc3 tc3VarA2 = fs7Var.c.a();
        this.e = tc3VarA2;
        tc3 tc3VarA3 = fs7Var.d.a();
        this.f = tc3VarA3;
        nd0Var.c(tc3VarA);
        nd0Var.c(tc3VarA2);
        nd0Var.c(tc3VarA3);
        tc3VarA.a(this);
        tc3VarA2.a(this);
        tc3VarA3.a(this);
    }

    public final void a(ld0.a aVar) {
        this.b.add(aVar);
    }

    @Override // ld0.a
    public final void e() {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.b;
            if (i >= arrayList.size()) {
                return;
            }
            ((ld0.a) arrayList.get(i)).e();
            i++;
        }
    }

    @Override // defpackage.sx1
    public final void f(List<sx1> list, List<sx1> list2) {
    }
}
