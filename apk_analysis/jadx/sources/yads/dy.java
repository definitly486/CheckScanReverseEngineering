package yads;

import defpackage.fh8;
import defpackage.so9;
import defpackage.ws6;

/* JADX INFO: loaded from: classes6.dex */
public final class dy {
    public final rv5 a;

    public dy(rv5 rv5Var, et4 et4Var) {
        this.a = rv5Var;
        new fh8(new so9(this, 1));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final fy a(ws6 ws6Var, dy dyVar) {
        if (ws6Var == null) {
            rv5 rv5Var = dyVar.a;
            return new jv5();
        }
        rv5 rv5Var2 = dyVar.a;
        fy[] fyVarArr = {ws6Var.get(), new jv5()};
        return new ey();
    }
}
