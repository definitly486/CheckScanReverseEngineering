package yads;

import androidx.media3.common.C;

/* JADX INFO: loaded from: classes6.dex */
public final class t00 implements z04, y04 {
    public final z04 b;
    public y04 c;
    public s00[] d = new s00[0];
    public long e;
    public long f;
    public long g;
    public v00 h;

    public t00(z04 z04Var, boolean z, long j, long j2) {
        this.b = z04Var;
        this.e = z ? j : C.TIME_UNSET;
        this.f = j;
        this.g = j2;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x013f  */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0157, code lost:
    
        if (r11 > r1) goto L111;
     */
    @Override // yads.z04
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(yads.er2[] r21, boolean[] r22, yads.mc5[] r23, boolean[] r24, long r25) {
        /*
            Method dump skipped, instruction units count: 460
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: yads.t00.a(yads.er2[], boolean[], yads.mc5[], boolean[], long):long");
    }

    @Override // yads.ui5
    public final boolean c(long j) {
        return this.b.c(j);
    }

    @Override // yads.ui5
    public final long getBufferedPositionUs() {
        long bufferedPositionUs = this.b.getBufferedPositionUs();
        if (bufferedPositionUs != Long.MIN_VALUE) {
            long j = this.g;
            if (j == Long.MIN_VALUE || bufferedPositionUs < j) {
                return bufferedPositionUs;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // yads.ui5
    public final long getNextLoadPositionUs() {
        long nextLoadPositionUs = this.b.getNextLoadPositionUs();
        if (nextLoadPositionUs != Long.MIN_VALUE) {
            long j = this.g;
            if (j == Long.MIN_VALUE || nextLoadPositionUs < j) {
                return nextLoadPositionUs;
            }
        }
        return Long.MIN_VALUE;
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
    public final void maybeThrowPrepareError() throws v00 {
        v00 v00Var = this.h;
        if (v00Var != null) {
            throw v00Var;
        }
        this.b.maybeThrowPrepareError();
    }

    @Override // yads.z04
    public final long readDiscontinuity() {
        long j = this.e;
        if (j != C.TIME_UNSET) {
            this.e = C.TIME_UNSET;
            long discontinuity = readDiscontinuity();
            return discontinuity != C.TIME_UNSET ? discontinuity : j;
        }
        long discontinuity2 = this.b.readDiscontinuity();
        if (discontinuity2 == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        if (discontinuity2 >= this.f) {
            long j2 = this.g;
            if (j2 == Long.MIN_VALUE || discontinuity2 <= j2) {
                return discontinuity2;
            }
            defpackage.ud.g();
        } else {
            defpackage.ud.g();
        }
        return 0L;
    }

    @Override // yads.ui5
    public final void reevaluateBuffer(long j) {
        this.b.reevaluateBuffer(j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0031, code lost:
    
        if (r0 > r5) goto L17;
     */
    @Override // yads.z04
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long seekToUs(long r6) {
        /*
            r5 = this;
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r5.e = r0
            yads.s00[] r0 = r5.d
            int r1 = r0.length
            r2 = 0
            r3 = r2
        Lc:
            if (r3 >= r1) goto L17
            r4 = r0[r3]
            if (r4 == 0) goto L14
            r4.c = r2
        L14:
            int r3 = r3 + 1
            goto Lc
        L17:
            yads.z04 r0 = r5.b
            long r0 = r0.seekToUs(r6)
            int r6 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r6 == 0) goto L3a
            long r6 = r5.f
            int r6 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r6 < 0) goto L34
            long r5 = r5.g
            r2 = -9223372036854775808
            int r7 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r7 == 0) goto L3a
            int r5 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r5 > 0) goto L34
            goto L3a
        L34:
            defpackage.ud.g()
            r5 = 0
            return r5
        L3a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: yads.t00.seekToUs(long):long");
    }

    @Override // yads.z04
    public final void a(y04 y04Var, long j) {
        this.c = y04Var;
        this.b.a(this, j);
    }

    @Override // yads.ti5
    public final void a(ui5 ui5Var) {
        y04 y04Var = this.c;
        y04Var.getClass();
        y04Var.a((ui5) this);
    }

    @Override // yads.z04
    public final void a(long j) {
        this.b.a(j);
    }

    @Override // yads.z04
    public final long a(long j, th5 th5Var) {
        long j2 = this.f;
        if (j == j2) {
            return j2;
        }
        int i = u56.a;
        long jMax = Math.max(0L, Math.min(th5Var.a, j - j2));
        long j3 = th5Var.b;
        long j4 = this.g;
        long jMax2 = Math.max(0L, Math.min(j3, j4 == Long.MIN_VALUE ? Long.MAX_VALUE : j4 - j));
        if (jMax != th5Var.a || jMax2 != th5Var.b) {
            th5Var = new th5(jMax, jMax2);
        }
        return this.b.a(j, th5Var);
    }

    @Override // yads.y04
    public final void a(z04 z04Var) {
        if (this.h != null) {
            return;
        }
        y04 y04Var = this.c;
        y04Var.getClass();
        y04Var.a((z04) this);
    }
}
