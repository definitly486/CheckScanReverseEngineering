package yads;

import androidx.media3.common.C;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;

/* JADX INFO: loaded from: classes6.dex */
public final class v25 implements pt {
    public final vx5 a;
    public final os4 b = new os4();

    public v25(vx5 vx5Var) {
        this.a = vx5Var;
    }

    @Override // yads.pt
    public final ot a(wk0 wk0Var, long j) {
        int i;
        int i2;
        int iA;
        long j2 = wk0Var.d;
        int iMin = (int) Math.min(20000L, wk0Var.c - j2);
        this.b.c(iMin);
        wk0Var.b(this.b.a, 0, iMin, false);
        os4 os4Var = this.b;
        int i3 = -1;
        int i4 = -1;
        long j3 = -9223372036854775807L;
        while (true) {
            int i5 = os4Var.c;
            int i6 = os4Var.b;
            if (i5 - i6 < 4) {
                return j3 != C.TIME_UNSET ? new ot(-2, j3, j2 + ((long) i3)) : ot.d;
            }
            int iA2 = w25.a(os4Var.a, i6);
            int i7 = os4Var.b;
            if (iA2 != 442) {
                os4Var.e(i7 + 1);
            } else {
                os4Var.e(i7 + 4);
                long jA = x25.a(os4Var);
                if (jA != C.TIME_UNSET) {
                    long jB = this.a.b(jA);
                    if (jB > j) {
                        return j3 == C.TIME_UNSET ? new ot(-1, jB, j2) : new ot(0, C.TIME_UNSET, j2 + ((long) i4));
                    }
                    long j4 = SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US + jB;
                    int i8 = os4Var.b;
                    if (j4 > j) {
                        return new ot(0, C.TIME_UNSET, j2 + ((long) i8));
                    }
                    j3 = jB;
                    i4 = i8;
                }
                int i9 = os4Var.c;
                int i10 = os4Var.b;
                if (i9 - i10 < 10) {
                    os4Var.e(i9);
                } else {
                    os4Var.e(i10 + 9);
                    int iK = os4Var.k() & 7;
                    int i11 = os4Var.c;
                    int i12 = os4Var.b;
                    if (i11 - i12 < iK) {
                        os4Var.e(i9);
                    } else {
                        os4Var.e(i12 + iK);
                        int i13 = os4Var.c;
                        int i14 = os4Var.b;
                        if (i13 - i14 < 4) {
                            os4Var.e(i9);
                        } else if (w25.a(os4Var.a, i14) == 443) {
                            os4Var.e(os4Var.b + 4);
                            int iP = os4Var.p();
                            int i15 = os4Var.c;
                            int i16 = os4Var.b;
                            if (i15 - i16 < iP) {
                                os4Var.e(i9);
                            } else {
                                os4Var.e(i16 + iP);
                                while (true) {
                                    i = os4Var.c;
                                    i2 = os4Var.b;
                                    if (i - i2 < 4 || (iA = w25.a(os4Var.a, i2)) == 442 || iA == 441 || (iA >>> 8) != 1) {
                                        break;
                                    }
                                    os4Var.e(os4Var.b + 4);
                                    if (os4Var.c - os4Var.b < 2) {
                                        os4Var.e(i9);
                                        break;
                                    }
                                    os4Var.e(Math.min(os4Var.c, os4Var.b + os4Var.p()));
                                }
                            }
                        } else {
                            while (true) {
                                i = os4Var.c;
                                i2 = os4Var.b;
                                if (i - i2 < 4) {
                                    break;
                                }
                                break;
                                os4Var.e(Math.min(os4Var.c, os4Var.b + os4Var.p()));
                            }
                        }
                    }
                }
                i3 = os4Var.b;
            }
        }
    }

    @Override // yads.pt
    public final void a() {
        this.b.a(u56.f);
    }
}
