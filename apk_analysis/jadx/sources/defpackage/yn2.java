package defpackage;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class yn2 extends w93 {
    public final w93 d;

    public yn2(w93 w93Var) {
        w93Var.getClass();
        this.d = w93Var;
    }

    @Override // defpackage.w93
    public final m93 E(j46 j46Var) {
        return this.d.E(j46Var);
    }

    @Override // defpackage.w93
    public final s18 P(j46 j46Var, boolean z) {
        j46 j46VarD = j46Var.d();
        if (j46VarD != null) {
            e(j46VarD);
        }
        return this.d.P(j46Var, z);
    }

    @Override // defpackage.w93
    public final v48 Q(j46 j46Var) {
        j46Var.getClass();
        return this.d.Q(j46Var);
    }

    @Override // defpackage.w93
    public final s18 a(j46 j46Var) {
        return this.d.a(j46Var);
    }

    @Override // defpackage.w93
    public final void b(j46 j46Var, j46 j46Var2) {
        j46Var2.getClass();
        this.d.b(j46Var, j46Var2);
    }

    @Override // defpackage.w93, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.d.close();
    }

    @Override // defpackage.w93
    public final void f(j46 j46Var) {
        j46Var.getClass();
        this.d.f(j46Var);
    }

    @Override // defpackage.w93
    public final void g(j46 j46Var) {
        j46Var.getClass();
        this.d.g(j46Var);
    }

    @Override // defpackage.w93
    public final List o(j46 j46Var) {
        j46Var.getClass();
        List<j46> listO = this.d.o(j46Var);
        ArrayList arrayList = new ArrayList();
        for (j46 j46Var2 : listO) {
            j46Var2.getClass();
            arrayList.add(j46Var2);
        }
        nn1.I(arrayList);
        return arrayList;
    }

    public final String toString() {
        return x07.a(getClass()).f() + '(' + this.d + ')';
    }

    @Override // defpackage.w93
    public final s93 v(j46 j46Var) {
        j46Var.getClass();
        s93 s93VarV = this.d.v(j46Var);
        if (s93VarV == null) {
            return null;
        }
        j46 j46Var2 = s93VarV.c;
        if (j46Var2 == null) {
            return s93VarV;
        }
        boolean z = s93VarV.a;
        boolean z2 = s93VarV.b;
        Long l = s93VarV.d;
        Long l2 = s93VarV.e;
        Long l3 = s93VarV.f;
        Long l4 = s93VarV.g;
        Map<ne4<?>, Object> map = s93VarV.h;
        map.getClass();
        return new s93(z, z2, j46Var2, l, l2, l3, l4, map);
    }

    @Override // defpackage.w93
    public final m93 y(j46 j46Var) {
        j46Var.getClass();
        return this.d.y(j46Var);
    }
}
