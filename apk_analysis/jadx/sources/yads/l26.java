package yads;

import androidx.media3.common.C;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import androidx.media3.extractor.ts.TsExtractor;

/* JADX INFO: loaded from: classes6.dex */
public final class l26 implements pt {
    public final vx5 a;
    public final os4 b = new os4();
    public final int c;
    public final int d;

    public l26(int i, vx5 vx5Var, int i2) {
        this.c = i;
        this.a = vx5Var;
        this.d = i2;
    }

    @Override // yads.pt
    public final ot a(wk0 wk0Var, long j) {
        long j2;
        long j3 = wk0Var.d;
        int iMin = (int) Math.min(this.d, wk0Var.c - j3);
        this.b.c(iMin);
        wk0Var.b(this.b.a, 0, iMin, false);
        os4 os4Var = this.b;
        int i = os4Var.c;
        long j4 = -1;
        long j5 = -1;
        long j6 = C.TIME_UNSET;
        while (true) {
            int i2 = os4Var.c;
            int i3 = os4Var.b;
            if (i2 - i3 < 188) {
                j2 = C.TIME_UNSET;
                break;
            }
            byte[] bArr = os4Var.a;
            while (true) {
                if (i3 >= i) {
                    j2 = C.TIME_UNSET;
                    break;
                }
                byte b = bArr[i3];
                j2 = C.TIME_UNSET;
                if (b == 71) {
                    break;
                }
                i3++;
            }
            int i4 = i3 + TsExtractor.TS_PACKET_SIZE;
            if (i4 > i) {
                break;
            }
            long jA = v26.a(os4Var, i3, this.c);
            if (jA != j2) {
                long jB = this.a.b(jA);
                if (jB > j) {
                    return j6 == j2 ? new ot(-1, jB, j3) : new ot(0, C.TIME_UNSET, j3 + j5);
                }
                j6 = jB;
                if (SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US + j6 > j) {
                    return new ot(0, C.TIME_UNSET, j3 + ((long) i3));
                }
                j5 = i3;
            }
            os4Var.e(i4);
            j4 = i4;
        }
        return j6 != j2 ? new ot(-2, j6, j3 + j4) : ot.d;
    }

    @Override // yads.pt
    public final void a() {
        this.b.a(u56.f);
    }
}
