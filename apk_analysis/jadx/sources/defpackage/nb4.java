package defpackage;

import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes5.dex */
public class nb4 extends sb4 implements hq1 {
    public final boolean e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nb4(mb4 mb4Var) {
        super(true);
        boolean z = true;
        O(mb4Var);
        Unsafe unsafe = pz0.a;
        long j = sb4.b;
        gi1 gi1Var = (gi1) unsafe.getObjectVolatile(this, j);
        hi1 hi1Var = gi1Var instanceof hi1 ? (hi1) gi1Var : null;
        if (hi1Var == null) {
            z = false;
            break;
        }
        sb4 sb4VarJ = hi1Var.j();
        while (!sb4VarJ.I()) {
            gi1 gi1Var2 = (gi1) pz0.a.getObjectVolatile(sb4VarJ, j);
            hi1 hi1Var2 = gi1Var2 instanceof hi1 ? (hi1) gi1Var2 : null;
            if (hi1Var2 == null) {
                z = false;
                break;
            }
            sb4VarJ = hi1Var2.j();
        }
        this.e = z;
    }

    @Override // defpackage.sb4
    public final boolean I() {
        return this.e;
    }

    @Override // defpackage.sb4
    public final boolean J() {
        return true;
    }

    @Override // defpackage.hq1
    public final boolean complete() {
        return T(j59.a);
    }
}
