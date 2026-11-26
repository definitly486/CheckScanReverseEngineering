package yads;

import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public final class ul0 implements qp4 {
    public final pp4 a;
    public final long b;
    public final long c;
    public final fs5 d;
    public int e;
    public long f;
    public long g;
    public long h;
    public long i;
    public long j;
    public long k;
    public long l;

    public ul0(fs5 fs5Var, long j, long j2, long j3, long j4, boolean z) {
        if (j < 0 || j2 <= j) {
            defpackage.mi2.b();
            throw null;
        }
        this.d = fs5Var;
        this.b = j;
        this.c = j2;
        if (j3 == j2 - j || z) {
            this.f = j4;
            this.e = 4;
        } else {
            this.e = 0;
        }
        this.a = new pp4();
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0069  */
    @Override // yads.qp4
    public final long a(wk0 wk0Var) throws IOException {
        long j;
        long jMax;
        long j2;
        int i = this.e;
        if (i == 0) {
            long j3 = wk0Var.d;
            this.g = j3;
            this.e = 1;
            long j4 = this.c - 65307;
            if (j4 > j3) {
                return j4;
            }
        } else if (i != 1) {
            if (i == 2) {
                long j5 = this.i;
                j = 2;
                long j6 = this.j;
                if (j5 == j6) {
                    jMax = -1;
                    j2 = -1;
                } else {
                    long j7 = wk0Var.d;
                    if (this.a.a(wk0Var, j6)) {
                        this.a.a(wk0Var, false);
                        wk0Var.f = 0;
                        long j8 = this.h;
                        pp4 pp4Var = this.a;
                        long j9 = pp4Var.b;
                        long j10 = j8 - j9;
                        int i2 = pp4Var.d + pp4Var.e;
                        if (0 > j10 || j10 >= 72000) {
                            if (j10 < 0) {
                                this.j = j7;
                                this.l = j9;
                            } else {
                                this.i = wk0Var.d + ((long) i2);
                                this.k = j9;
                            }
                            long j11 = this.j;
                            jMax = this.i;
                            long j12 = j11 - jMax;
                            if (j12 < SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US) {
                                this.j = jMax;
                            } else {
                                j2 = -1;
                                long j13 = i2;
                                long j14 = j10 <= 0 ? 2L : 1L;
                                long j15 = wk0Var.d;
                                long j16 = (j12 * j10) / (this.l - this.k);
                                int i3 = u56.a;
                                jMax = Math.max(jMax, Math.min(j16 + (j15 - (j13 * j14)), j11 - 1));
                            }
                        } else {
                            jMax = -1;
                            j2 = -1;
                        }
                    } else {
                        jMax = this.i;
                        if (jMax == j7) {
                            defpackage.ki0.d("No ogg page can be found.");
                            return 0L;
                        }
                    }
                    j2 = -1;
                }
                if (jMax != j2) {
                    return jMax;
                }
                this.e = 3;
            } else {
                if (i != 3) {
                    if (i == 4) {
                        return -1L;
                    }
                    defpackage.ud.g();
                    return 0L;
                }
                j2 = -1;
                j = 2;
            }
            while (true) {
                this.a.a(wk0Var, j2);
                this.a.a(wk0Var, false);
                pp4 pp4Var2 = this.a;
                if (pp4Var2.b > this.h) {
                    wk0Var.f = 0;
                    this.e = 4;
                    return -(this.k + j);
                }
                wk0Var.a(pp4Var2.d + pp4Var2.e);
                this.i = wk0Var.d;
                this.k = this.a.b;
                j2 = -1;
            }
        }
        pp4 pp4Var3 = this.a;
        pp4Var3.a = 0;
        pp4Var3.b = 0L;
        pp4Var3.c = 0;
        pp4Var3.d = 0;
        pp4Var3.e = 0;
        if (!pp4Var3.a(wk0Var, -1L)) {
            defpackage.n7.e();
            return 0L;
        }
        this.a.a(wk0Var, false);
        pp4 pp4Var4 = this.a;
        wk0Var.a(pp4Var4.d + pp4Var4.e);
        long j17 = this.a.b;
        while (true) {
            pp4 pp4Var5 = this.a;
            if ((pp4Var5.a & 4) == 4 || !pp4Var5.a(wk0Var, -1L) || wk0Var.d >= this.c || !this.a.a(wk0Var, true)) {
                break;
            }
            pp4 pp4Var6 = this.a;
            try {
                wk0Var.a(pp4Var6.d + pp4Var6.e);
                j17 = this.a.b;
            } catch (EOFException unused) {
            }
        }
        this.f = j17;
        this.e = 4;
        return this.g;
    }

    @Override // yads.qp4
    public final sh5 a() {
        if (this.f != 0) {
            return new tl0(this);
        }
        return null;
    }

    @Override // yads.qp4
    public final void a(long j) {
        long j2 = this.f - 1;
        int i = u56.a;
        this.h = Math.max(0L, Math.min(j, j2));
        this.e = 2;
        this.i = this.b;
        this.j = this.c;
        this.k = 0L;
        this.l = this.f;
    }
}
