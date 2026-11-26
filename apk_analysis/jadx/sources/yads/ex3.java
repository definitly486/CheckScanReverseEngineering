package yads;

import androidx.media3.common.C;

/* JADX INFO: loaded from: classes6.dex */
public final class ex3 implements z04, y04 {
    public final h14 b;
    public final long c;
    public final aj0 d;
    public cs e;
    public z04 f;
    public y04 g;
    public long i = C.TIME_UNSET;

    public ex3(h14 h14Var, aj0 aj0Var, long j) {
        this.b = h14Var;
        this.d = aj0Var;
        this.c = j;
    }

    public final void a(h14 h14Var) {
        long j = this.c;
        long j2 = this.i;
        if (j2 != C.TIME_UNSET) {
            j = j2;
        }
        cs csVar = this.e;
        csVar.getClass();
        z04 z04VarA = csVar.a(h14Var, this.d, j);
        this.f = z04VarA;
        if (this.g != null) {
            z04VarA.a(this, j);
        }
    }

    @Override // yads.ui5
    public final boolean c(long j) {
        z04 z04Var = this.f;
        return z04Var != null && z04Var.c(j);
    }

    @Override // yads.ui5
    public final long getBufferedPositionUs() {
        z04 z04Var = this.f;
        int i = u56.a;
        return z04Var.getBufferedPositionUs();
    }

    @Override // yads.ui5
    public final long getNextLoadPositionUs() {
        z04 z04Var = this.f;
        int i = u56.a;
        return z04Var.getNextLoadPositionUs();
    }

    @Override // yads.z04
    public final g06 getTrackGroups() {
        z04 z04Var = this.f;
        int i = u56.a;
        return z04Var.getTrackGroups();
    }

    @Override // yads.ui5
    public final boolean isLoading() {
        z04 z04Var = this.f;
        return z04Var != null && z04Var.isLoading();
    }

    @Override // yads.z04
    public final void maybeThrowPrepareError() {
        z04 z04Var = this.f;
        if (z04Var != null) {
            z04Var.maybeThrowPrepareError();
            return;
        }
        cs csVar = this.e;
        if (csVar != null) {
            csVar.d();
        }
    }

    @Override // yads.z04
    public final long readDiscontinuity() {
        z04 z04Var = this.f;
        int i = u56.a;
        return z04Var.readDiscontinuity();
    }

    @Override // yads.ui5
    public final void reevaluateBuffer(long j) {
        z04 z04Var = this.f;
        int i = u56.a;
        z04Var.reevaluateBuffer(j);
    }

    @Override // yads.z04
    public final long seekToUs(long j) {
        z04 z04Var = this.f;
        int i = u56.a;
        return z04Var.seekToUs(j);
    }

    @Override // yads.ti5
    public final void a(ui5 ui5Var) {
        y04 y04Var = this.g;
        int i = u56.a;
        y04Var.a((ui5) this);
    }

    @Override // yads.z04
    public final void a(y04 y04Var, long j) {
        this.g = y04Var;
        z04 z04Var = this.f;
        if (z04Var != null) {
            long j2 = this.c;
            long j3 = this.i;
            if (j3 != C.TIME_UNSET) {
                j2 = j3;
            }
            z04Var.a(this, j2);
        }
    }

    @Override // yads.z04
    public final long a(er2[] er2VarArr, boolean[] zArr, mc5[] mc5VarArr, boolean[] zArr2, long j) {
        long j2 = this.i;
        if (j2 != C.TIME_UNSET && j == this.c) {
            this.i = C.TIME_UNSET;
            j = j2;
        }
        z04 z04Var = this.f;
        int i = u56.a;
        return z04Var.a(er2VarArr, zArr, mc5VarArr, zArr2, j);
    }

    @Override // yads.z04
    public final void a(long j) {
        z04 z04Var = this.f;
        int i = u56.a;
        z04Var.a(j);
    }

    @Override // yads.z04
    public final long a(long j, th5 th5Var) {
        z04 z04Var = this.f;
        int i = u56.a;
        return z04Var.a(j, th5Var);
    }

    @Override // yads.y04
    public final void a(z04 z04Var) {
        y04 y04Var = this.g;
        int i = u56.a;
        y04Var.a((z04) this);
    }
}
