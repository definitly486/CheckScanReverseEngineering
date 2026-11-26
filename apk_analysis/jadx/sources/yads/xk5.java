package yads;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
public abstract class xk5 extends sk5 implements nt5 {
    public xk5() {
        super(new qt5[2], new rt5[2]);
        int i = this.g;
        mi0[] mi0VarArr = this.e;
        if (i != mi0VarArr.length) {
            defpackage.ud.g();
            throw null;
        }
        for (mi0 mi0Var : mi0VarArr) {
            mi0Var.c(1024);
        }
    }

    public abstract mt5 a(byte[] bArr, int i, boolean z);

    @Override // yads.sk5
    public final ot5 a(mi0 mi0Var, rt5 rt5Var, boolean z) {
        qt5 qt5Var = (qt5) mi0Var;
        try {
            ByteBuffer byteBuffer = qt5Var.d;
            byteBuffer.getClass();
            mt5 mt5VarA = a(byteBuffer.array(), byteBuffer.limit(), z);
            long j = qt5Var.f;
            long j2 = qt5Var.i;
            rt5Var.c = j;
            rt5Var.d = mt5VarA;
            if (j2 != Long.MAX_VALUE) {
                j = j2;
            }
            rt5Var.e = j;
            rt5Var.b &= Integer.MAX_VALUE;
            return null;
        } catch (ot5 e) {
            return e;
        }
    }

    @Override // yads.nt5
    public final void a(long j) {
    }
}
