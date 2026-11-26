package yads;

import androidx.media3.common.C;

/* JADX INFO: loaded from: classes6.dex */
public final class lg3 extends cz {
    public final ez j;
    public bs k;
    public long l;
    public volatile boolean m;

    public lg3(wc0 wc0Var, bd0 bd0Var, vz2 vz2Var, int i, Object obj, ez ezVar) {
        super(wc0Var, bd0Var, 2, vz2Var, i, obj, C.TIME_UNSET, C.TIME_UNSET);
        this.j = ezVar;
    }

    @Override // yads.nu3
    public final void a() {
        if (this.l == 0) {
            ((nv) this.j).a(this.k, C.TIME_UNSET, C.TIME_UNSET);
        }
        try {
            bd0 bd0Var = this.b;
            long j = this.l;
            long j2 = bd0Var.g;
            long j3 = -1;
            if (j2 != -1) {
                j3 = j2 - j;
            }
            bd0 bd0VarA = bd0Var.a(j, j3);
            rq5 rq5Var = this.i;
            wk0 wk0Var = new wk0(rq5Var, bd0VarA.f, rq5Var.a(bd0VarA));
            while (!this.m) {
                try {
                    int iA = ((nv) this.j).b.a(wk0Var, nv.l);
                    if (iA == 1) {
                        throw new IllegalStateException();
                    }
                    if (iA != 0) {
                        break;
                    }
                } catch (Throwable th) {
                    this.l = wk0Var.d - this.b.f;
                    throw th;
                }
            }
            this.l = wk0Var.d - this.b.f;
            zc0.a(this.i);
        } catch (Throwable th2) {
            zc0.a(this.i);
            throw th2;
        }
    }

    @Override // yads.nu3
    public final void b() {
        this.m = true;
    }
}
