package yads;

import android.media.MediaFormat;

/* JADX INFO: loaded from: classes6.dex */
public final class cq2 implements id6, wx, tw4 {
    public id6 b;
    public wx c;
    public xc5 d;
    public xc5 e;

    @Override // yads.tw4
    public final void a(int i, Object obj) {
        if (i == 7) {
            this.b = (id6) obj;
            return;
        }
        if (i == 8) {
            this.c = (wx) obj;
            return;
        }
        if (i != 10000) {
            return;
        }
        bp5 bp5Var = (bp5) obj;
        if (bp5Var == null) {
            this.d = null;
            this.e = null;
        } else {
            xc5 xc5Var = bp5Var.f;
            this.d = xc5Var;
            this.e = xc5Var;
        }
    }

    @Override // yads.id6
    public final void a(long j, long j2, vz2 vz2Var, MediaFormat mediaFormat) {
        xc5 xc5Var = this.d;
        if (xc5Var != null) {
            xc5Var.a(j, j2, vz2Var, mediaFormat);
        }
        id6 id6Var = this.b;
        if (id6Var != null) {
            id6Var.a(j, j2, vz2Var, mediaFormat);
        }
    }

    @Override // yads.wx
    public final void a(long j, float[] fArr) {
        xc5 xc5Var = this.e;
        if (xc5Var != null) {
            xc5Var.a(j, fArr);
        }
        wx wxVar = this.c;
        if (wxVar != null) {
            wxVar.a(j, fArr);
        }
    }

    @Override // yads.wx
    public final void a() {
        xc5 xc5Var = this.e;
        if (xc5Var != null) {
            xc5Var.a();
        }
        wx wxVar = this.c;
        if (wxVar != null) {
            wxVar.a();
        }
    }
}
