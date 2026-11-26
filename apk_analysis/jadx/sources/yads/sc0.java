package yads;

import androidx.media3.common.C;

/* JADX INFO: loaded from: classes6.dex */
public final class sc0 implements qc0 {
    public final gz a;
    public final long b;

    public sc0(gz gzVar, long j) {
        this.a = gzVar;
        this.b = j;
    }

    @Override // yads.qc0
    public final long a(long j, long j2) {
        return u56.b(this.a.e, j + this.b, true);
    }

    @Override // yads.qc0
    public final y35 b(long j) {
        gz gzVar = this.a;
        int i = (int) j;
        return new y35(null, gzVar.c[i], gzVar.b[i]);
    }

    @Override // yads.qc0
    public final long c(long j) {
        return this.a.a;
    }

    @Override // yads.qc0
    public final long d(long j, long j2) {
        return C.TIME_UNSET;
    }

    @Override // yads.qc0
    public final long e(long j, long j2) {
        return this.a.a;
    }

    @Override // yads.qc0
    public final long c(long j, long j2) {
        return 0L;
    }

    @Override // yads.qc0
    public final long a(long j) {
        return this.a.e[(int) j] - this.b;
    }

    @Override // yads.qc0
    public final boolean a() {
        return true;
    }

    @Override // yads.qc0
    public final long b(long j, long j2) {
        return this.a.d[(int) j];
    }

    @Override // yads.qc0
    public final long b() {
        return 0L;
    }
}
