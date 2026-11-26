package yads;

import androidx.media3.common.C;

/* JADX INFO: loaded from: classes6.dex */
public final class iz implements mc5 {
    public final jz b;
    public final lc5 c;
    public final int d;
    public boolean e;
    public final /* synthetic */ jz f;

    public iz(jz jzVar, jz jzVar2, lc5 lc5Var, int i) {
        this.f = jzVar;
        this.b = jzVar2;
        this.c = lc5Var;
        this.d = i;
    }

    @Override // yads.mc5
    public final int a(a03 a03Var, mi0 mi0Var, int i) {
        if (this.f.d()) {
            return -3;
        }
        zr zrVar = this.f.w;
        if (zrVar != null) {
            int iA = zrVar.a(this.d + 1);
            lc5 lc5Var = this.c;
            if (iA <= lc5Var.q + lc5Var.s) {
                return -3;
            }
        }
        if (!this.e) {
            jz jzVar = this.f;
            k14 k14Var = jzVar.h;
            int[] iArr = jzVar.c;
            int i2 = this.d;
            k14Var.a(new r04(1, iArr[i2], jzVar.d[i2], 0, null, k14Var.a(jzVar.u), C.TIME_UNSET));
            this.e = true;
        }
        return this.c.a(a03Var, mi0Var, i, this.f.x);
    }

    @Override // yads.mc5
    public final int b(long j) throws Throwable {
        if (this.f.d()) {
            return 0;
        }
        int iB = this.c.b(j, this.f.x);
        zr zrVar = this.f.w;
        if (zrVar != null) {
            int iA = zrVar.a(this.d + 1);
            lc5 lc5Var = this.c;
            iB = Math.min(iB, iA - (lc5Var.q + lc5Var.s));
        }
        lc5 lc5Var2 = this.c;
        synchronized (lc5Var2) {
            if (iB >= 0) {
                int i = lc5Var2.s + iB;
                if (i <= lc5Var2.p) {
                    lc5Var2.s = i;
                }
            }
            throw new IllegalArgumentException();
        }
        if (iB > 0 && !this.e) {
            jz jzVar = this.f;
            k14 k14Var = jzVar.h;
            int[] iArr = jzVar.c;
            int i2 = this.d;
            k14Var.a(new r04(1, iArr[i2], jzVar.d[i2], 0, null, k14Var.a(jzVar.u), C.TIME_UNSET));
            this.e = true;
        }
        return iB;
    }

    @Override // yads.mc5
    public final boolean c() {
        return !this.f.d() && this.c.a(this.f.x);
    }

    @Override // yads.mc5
    public final void a() {
    }
}
