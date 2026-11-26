package defpackage;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public final class xn2 extends jl8 {
    public final /* synthetic */ un2 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xn2(un2 un2Var, String str) {
        super(str, true);
        this.e = un2Var;
    }

    @Override // defpackage.jl8
    public final long a() {
        un2 un2Var = this.e;
        synchronized (un2Var) {
            if (!un2Var.l || un2Var.m) {
                return -1L;
            }
            try {
                un2Var.X();
            } catch (IOException unused) {
                un2Var.n = true;
            }
            try {
                if (un2Var.y()) {
                    un2Var.U();
                    un2Var.i = 0;
                }
            } catch (IOException unused2) {
                un2Var.o = true;
                un2Var.g = new hy6(new mj0());
            }
            return -1L;
        }
    }
}
