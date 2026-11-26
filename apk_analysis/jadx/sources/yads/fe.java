package yads;

import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import androidx.media3.extractor.AacUtil;
import java.io.EOFException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class fe implements ws2 {
    public static final int[] o;
    public static final int r;
    public boolean b;
    public long c;
    public int d;
    public int e;
    public boolean f;
    public int h;
    public long i;
    public zs2 j;
    public k06 k;
    public sh5 l;
    public boolean m;
    public static final int[] n = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};
    public static final byte[] p = u56.c("#!AMR\n");
    public static final byte[] q = u56.c("#!AMR-WB\n");
    public final byte[] a = new byte[1];
    public int g = -1;

    static {
        int[] iArr = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
        o = iArr;
        r = iArr[8];
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:35:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:38:0x00ab  */
    @Override // yads.ws2
    public final int a(xs2 xs2Var, qx4 qx4Var) throws xs4 {
        int iA;
        int i;
        int i2 = 0;
        if (this.k == null) {
            defpackage.ud.g();
            return 0;
        }
        int i3 = u56.a;
        wk0 wk0Var = (wk0) xs2Var;
        if (wk0Var.d == 0) {
            byte[] bArr = p;
            wk0Var.f = 0;
            byte[] bArr2 = new byte[bArr.length];
            wk0Var.b(bArr2, 0, bArr.length, false);
            if (Arrays.equals(bArr2, bArr)) {
                this.b = false;
                wk0Var.a(bArr.length);
            } else {
                byte[] bArr3 = q;
                wk0Var.f = 0;
                byte[] bArr4 = new byte[bArr3.length];
                wk0Var.b(bArr4, 0, bArr3.length, false);
                if (!Arrays.equals(bArr4, bArr3)) {
                    defpackage.e2.h("Could not find AMR header.", null);
                    return 0;
                }
                this.b = true;
                wk0Var.a(bArr3.length);
            }
        }
        if (!this.m) {
            this.m = true;
            boolean z = this.b;
            String str = z ? MimeTypes.AUDIO_AMR_WB : MimeTypes.AUDIO_AMR_NB;
            int i4 = z ? AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND : 8000;
            k06 k06Var = this.k;
            uz2 uz2Var = new uz2();
            uz2Var.k = str;
            uz2Var.l = r;
            uz2Var.x = 1;
            uz2Var.y = i4;
            k06Var.a(new vz2(uz2Var));
        }
        int iA2 = this.e;
        if (iA2 == 0) {
            try {
                iA2 = a((wk0) xs2Var);
                this.d = iA2;
                this.e = iA2;
                int i5 = this.g;
                if (i5 == -1) {
                    long j = wk0Var.d;
                    this.g = iA2;
                    i5 = iA2;
                }
                if (i5 == iA2) {
                    this.h++;
                }
                iA = this.k.a(xs2Var, iA2, true);
                if (iA == -1) {
                    i2 = -1;
                } else {
                    i = this.e - iA;
                    this.e = i;
                    if (i <= 0) {
                        this.k.a(this.c + this.i, 1, this.d, 0, null);
                        this.c += 20000;
                    }
                }
            } catch (EOFException unused) {
            }
        } else {
            iA = this.k.a(xs2Var, iA2, true);
            if (iA == -1) {
                i2 = -1;
            } else {
                i = this.e - iA;
                this.e = i;
                if (i <= 0) {
                    this.k.a(this.c + this.i, 1, this.d, 0, null);
                    this.c += 20000;
                }
            }
        }
        if (!this.f) {
            rh5 rh5Var = new rh5(C.TIME_UNSET, 0L);
            this.l = rh5Var;
            this.j.a(rh5Var);
            this.f = true;
        }
        return i2;
    }

    @Override // yads.ws2
    public final void release() {
    }

    public final int a(wk0 wk0Var) throws xs4 {
        boolean z;
        wk0Var.f = 0;
        wk0Var.b(this.a, 0, 1, false);
        byte b = this.a[0];
        if ((b & 131) > 0) {
            defpackage.e2.h(vx4.a(b, "Invalid padding bits for frame header "), null);
            return 0;
        }
        int i = (b >> 3) & 15;
        if (i >= 0 && i <= 15 && (((z = this.b) && (i < 10 || i > 13)) || (!z && (i < 12 || i > 14)))) {
            return z ? o[i] : n[i];
        }
        StringBuilder sb = new StringBuilder("Illegal AMR ");
        sb.append(this.b ? "WB" : "NB");
        sb.append(" frame type ");
        sb.append(i);
        throw new xs4(sb.toString(), null, true, 1);
    }

    @Override // yads.ws2
    public final void a(zs2 zs2Var) {
        this.j = zs2Var;
        this.k = zs2Var.a(0, 1);
        zs2Var.a();
    }

    @Override // yads.ws2
    public final void a(long j, long j2) {
        this.c = 0L;
        this.d = 0;
        this.e = 0;
        if (j != 0) {
            sh5 sh5Var = this.l;
            if (sh5Var instanceof x50) {
                x50 x50Var = (x50) sh5Var;
                this.i = x50.a(x50Var.e, j, x50Var.b);
                return;
            }
        }
        this.i = 0L;
    }

    @Override // yads.ws2
    public final boolean a(xs2 xs2Var) {
        wk0 wk0Var = (wk0) xs2Var;
        byte[] bArr = p;
        wk0Var.f = 0;
        byte[] bArr2 = new byte[bArr.length];
        wk0Var.b(bArr2, 0, bArr.length, false);
        if (Arrays.equals(bArr2, bArr)) {
            this.b = false;
            wk0Var.a(bArr.length);
            return true;
        }
        byte[] bArr3 = q;
        wk0Var.f = 0;
        byte[] bArr4 = new byte[bArr3.length];
        wk0Var.b(bArr4, 0, bArr3.length, false);
        if (!Arrays.equals(bArr4, bArr3)) {
            return false;
        }
        this.b = true;
        wk0Var.a(bArr3.length);
        return true;
    }
}
