package yads;

import java.io.EOFException;

/* JADX INFO: loaded from: classes6.dex */
public final class cm2 implements k06 {
    public final byte[] a = new byte[4096];

    @Override // yads.k06
    public final int a(tc0 tc0Var, int i, boolean z) throws EOFException {
        int iC = tc0Var.c(this.a, 0, Math.min(this.a.length, i));
        if (iC != -1) {
            return iC;
        }
        if (z) {
            return -1;
        }
        defpackage.n7.e();
        return 0;
    }

    @Override // yads.k06
    public final void a(vz2 vz2Var) {
    }

    @Override // yads.k06
    public final void a(long j, int i, int i2, int i3, j06 j06Var) {
    }

    @Override // yads.k06
    public final void a(int i, os4 os4Var) {
        os4Var.e(os4Var.b + i);
    }
}
