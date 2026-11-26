package yads;

import androidx.media3.common.C;

/* JADX INFO: loaded from: classes6.dex */
public final class a84 implements z04, y04 {
    public final z04 b;
    public final long c;
    public y04 d;

    public a84(z04 z04Var, long j) {
        this.b = z04Var;
        this.c = j;
    }

    @Override // yads.z04
    public final long a(er2[] er2VarArr, boolean[] zArr, mc5[] mc5VarArr, boolean[] zArr2, long j) {
        mc5[] mc5VarArr2 = new mc5[mc5VarArr.length];
        int i = 0;
        while (true) {
            mc5 mc5Var = null;
            if (i >= mc5VarArr.length) {
                break;
            }
            b84 b84Var = (b84) mc5VarArr[i];
            if (b84Var != null) {
                mc5Var = b84Var.b;
            }
            mc5VarArr2[i] = mc5Var;
            i++;
        }
        long jA = this.b.a(er2VarArr, zArr, mc5VarArr2, zArr2, j - this.c);
        for (int i2 = 0; i2 < mc5VarArr.length; i2++) {
            mc5 mc5Var2 = mc5VarArr2[i2];
            if (mc5Var2 == null) {
                mc5VarArr[i2] = null;
            } else {
                mc5 mc5Var3 = mc5VarArr[i2];
                if (mc5Var3 == null || ((b84) mc5Var3).b != mc5Var2) {
                    mc5VarArr[i2] = new b84(mc5Var2, this.c);
                }
            }
        }
        return jA + this.c;
    }

    @Override // yads.ui5
    public final boolean c(long j) {
        return this.b.c(j - this.c);
    }

    @Override // yads.ui5
    public final long getBufferedPositionUs() {
        long bufferedPositionUs = this.b.getBufferedPositionUs();
        if (bufferedPositionUs == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return bufferedPositionUs + this.c;
    }

    @Override // yads.ui5
    public final long getNextLoadPositionUs() {
        long nextLoadPositionUs = this.b.getNextLoadPositionUs();
        if (nextLoadPositionUs == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return nextLoadPositionUs + this.c;
    }

    @Override // yads.z04
    public final g06 getTrackGroups() {
        return this.b.getTrackGroups();
    }

    @Override // yads.ui5
    public final boolean isLoading() {
        return this.b.isLoading();
    }

    @Override // yads.z04
    public final void maybeThrowPrepareError() {
        this.b.maybeThrowPrepareError();
    }

    @Override // yads.z04
    public final long readDiscontinuity() {
        long discontinuity = this.b.readDiscontinuity();
        return discontinuity == C.TIME_UNSET ? C.TIME_UNSET : discontinuity + this.c;
    }

    @Override // yads.ui5
    public final void reevaluateBuffer(long j) {
        this.b.reevaluateBuffer(j - this.c);
    }

    @Override // yads.z04
    public final long seekToUs(long j) {
        return this.b.seekToUs(j - this.c) + this.c;
    }

    @Override // yads.z04
    public final void a(y04 y04Var, long j) {
        this.d = y04Var;
        this.b.a(this, j - this.c);
    }

    @Override // yads.ti5
    public final void a(ui5 ui5Var) {
        y04 y04Var = this.d;
        y04Var.getClass();
        y04Var.a((ui5) this);
    }

    @Override // yads.z04
    public final void a(long j) {
        this.b.a(j - this.c);
    }

    @Override // yads.z04
    public final long a(long j, th5 th5Var) {
        return this.b.a(j - this.c, th5Var) + this.c;
    }

    @Override // yads.y04
    public final void a(z04 z04Var) {
        y04 y04Var = this.d;
        y04Var.getClass();
        y04Var.a((z04) this);
    }
}
