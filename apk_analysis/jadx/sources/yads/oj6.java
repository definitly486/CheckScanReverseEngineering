package yads;

import android.util.Pair;
import androidx.media3.common.MimeTypes;
import androidx.media3.extractor.WavUtil;
import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes6.dex */
public final class oj6 implements ws2 {
    public zs2 a;
    public k06 b;
    public mj6 e;
    public int c = 0;
    public long d = -1;
    public int f = -1;
    public long g = -1;

    /* JADX WARN: Code duplicated, block: B:63:0x0187  */
    @Override // yads.ws2
    public final int a(xs2 xs2Var, qx4 qx4Var) throws xs4 {
        int i;
        byte[] bArr;
        int i2;
        if (this.b == null) {
            defpackage.ud.g();
            return 0;
        }
        int i3 = u56.a;
        int i4 = this.c;
        int iB = 4;
        if (i4 == 0) {
            wk0 wk0Var = (wk0) xs2Var;
            if (wk0Var.d != 0) {
                defpackage.ud.g();
                return 0;
            }
            int i5 = this.f;
            if (i5 != -1) {
                wk0Var.a(i5);
                this.c = 4;
                return 0;
            }
            if (!rj6.a(wk0Var)) {
                defpackage.e2.h("Unsupported or unrecognized wav file type.", null);
                return 0;
            }
            long j = wk0Var.d;
            wk0Var.a((int) ((((long) wk0Var.f) + j) - j));
            this.c = 1;
            return 0;
        }
        long jD = -1;
        if (i4 == 1) {
            os4 os4Var = new os4(8);
            wk0 wk0Var2 = (wk0) xs2Var;
            qj6 qj6VarA = qj6.a(wk0Var2, os4Var);
            if (qj6VarA.a != 1685272116) {
                i = 0;
                wk0Var2.f = 0;
            } else {
                i = 0;
                wk0Var2.a(8, false);
                os4Var.e(0);
                wk0Var2.b(os4Var.a, 0, 8, false);
                jD = os4Var.d();
                wk0Var2.a(((int) qj6VarA.b) + 8);
            }
            this.d = jD;
            this.c = 2;
            return i;
        }
        if (i4 != 2) {
            if (i4 != 3) {
                if (i4 != 4) {
                    defpackage.ud.g();
                    return 0;
                }
                long j2 = this.g;
                if (j2 == -1) {
                    defpackage.ud.g();
                    return 0;
                }
                wk0 wk0Var3 = (wk0) xs2Var;
                long j3 = j2 - wk0Var3.d;
                mj6 mj6Var = this.e;
                mj6Var.getClass();
                return mj6Var.a(wk0Var3, j3) ? -1 : 0;
            }
            wk0 wk0Var4 = (wk0) xs2Var;
            wk0Var4.f = 0;
            qj6 qj6VarA2 = rj6.a(1684108385, wk0Var4, new os4(8));
            wk0Var4.a(8);
            Pair pairCreate = Pair.create(Long.valueOf(wk0Var4.d), Long.valueOf(qj6VarA2.b));
            this.f = ((Long) pairCreate.first).intValue();
            long jLongValue = ((Long) pairCreate.second).longValue();
            long j4 = this.d;
            if (j4 != -1 && jLongValue == MuxerUtil.UNSIGNED_INT_MAX_VALUE) {
                jLongValue = j4;
            }
            long j5 = ((long) this.f) + jLongValue;
            this.g = j5;
            long j6 = wk0Var4.c;
            if (j6 != -1 && j5 > j6) {
                sv3.d("WavExtractor", "Data exceeds input length: " + this.g + ", " + j6);
                this.g = j6;
            }
            mj6 mj6Var2 = this.e;
            mj6Var2.getClass();
            mj6Var2.a(this.f, this.g);
            this.c = 4;
            return 0;
        }
        os4 os4Var2 = new os4(16);
        wk0 wk0Var5 = (wk0) xs2Var;
        qj6 qj6VarA3 = rj6.a(WavUtil.FMT_FOURCC, wk0Var5, os4Var2);
        if (qj6VarA3.b < 16) {
            defpackage.ud.g();
            return 0;
        }
        wk0Var5.b(os4Var2.a, 0, 16, false);
        os4Var2.e(0);
        int iF = os4Var2.f();
        int iF2 = os4Var2.f();
        int iC = os4Var2.c();
        if (iC < 0) {
            defpackage.ah.f(vx4.a(iC, "Top bit not zero: "));
            return 0;
        }
        int iC2 = os4Var2.c();
        if (iC2 < 0) {
            defpackage.ah.f(vx4.a(iC2, "Top bit not zero: "));
            return 0;
        }
        int iF3 = os4Var2.f();
        int iF4 = os4Var2.f();
        int i6 = ((int) qj6VarA3.b) - 16;
        if (i6 > 0) {
            bArr = new byte[i6];
            wk0Var5.b(bArr, 0, i6, false);
        } else {
            bArr = u56.f;
        }
        byte[] bArr2 = bArr;
        long j7 = wk0Var5.d;
        wk0Var5.a((int) ((((long) wk0Var5.f) + j7) - j7));
        pj6 pj6Var = new pj6(iF, iF2, iC, iF3, iF4, bArr2);
        if (iF == 17) {
            this.e = new lj6(this.a, this.b, pj6Var);
        } else if (iF == 6) {
            this.e = new nj6(this.a, this.b, pj6Var, MimeTypes.AUDIO_ALAW, -1);
        } else if (iF == 7) {
            this.e = new nj6(this.a, this.b, pj6Var, MimeTypes.AUDIO_MLAW, -1);
        } else {
            if (iF == 1) {
                iB = u56.b(iF4);
                i2 = iB;
            } else {
                if (iF != 3) {
                    if (iF == 65534) {
                        iB = u56.b(iF4);
                        i2 = iB;
                    }
                } else if (iF4 == 32) {
                    i2 = iB;
                }
                i2 = 0;
            }
            if (i2 == 0) {
                throw xs4.a("Unsupported WAV format type: " + iF);
            }
            this.e = new nj6(this.a, this.b, pj6Var, MimeTypes.AUDIO_RAW, i2);
        }
        this.c = 3;
        return 0;
    }

    @Override // yads.ws2
    public final void release() {
    }

    @Override // yads.ws2
    public final boolean a(xs2 xs2Var) {
        return rj6.a((wk0) xs2Var);
    }

    @Override // yads.ws2
    public final void a(zs2 zs2Var) {
        this.a = zs2Var;
        this.b = zs2Var.a(0, 1);
        zs2Var.a();
    }

    @Override // yads.ws2
    public final void a(long j, long j2) {
        this.c = j == 0 ? 0 : 4;
        mj6 mj6Var = this.e;
        if (mj6Var != null) {
            mj6Var.a(j2);
        }
    }

    public static /* synthetic */ ws2[] a() {
        return new ws2[]{new oj6()};
    }
}
