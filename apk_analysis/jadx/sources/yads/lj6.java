package yads;

import androidx.media3.common.MimeTypes;
import androidx.media3.extractor.ts.TsExtractor;
import com.wdullaer.materialdatetimepicker.Utils;
import org.conscrypt.metrics.ConscryptStatsLog;

/* JADX INFO: loaded from: classes6.dex */
public final class lj6 implements mj6 {
    public static final int[] m = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};
    public static final int[] n = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, TsExtractor.TS_STREAM_TYPE_HDMV_DTS, 143, ConscryptStatsLog.TLS_HANDSHAKE_REPORTED__CIPHER_SUITE__TLS_RSA_WITH_AES_256_GCM_SHA384, 173, 190, 209, 230, 253, 279, 307, 337, 371, 408, 449, 494, Utils.PULSE_ANIMATOR_DURATION, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};
    public final zs2 a;
    public final k06 b;
    public final pj6 c;
    public final int d;
    public final byte[] e;
    public final os4 f;
    public final int g;
    public final vz2 h;
    public int i;
    public long j;
    public int k;
    public long l;

    public lj6(zs2 zs2Var, k06 k06Var, pj6 pj6Var) throws xs4 {
        this.a = zs2Var;
        this.b = k06Var;
        this.c = pj6Var;
        int iMax = Math.max(1, pj6Var.b / 10);
        this.g = iMax;
        byte[] bArr = pj6Var.e;
        int length = bArr.length;
        byte b = bArr[0];
        byte b2 = bArr[1];
        int i = ((bArr[3] & 255) << 8) | (bArr[2] & 255);
        this.d = i;
        int i2 = pj6Var.a;
        int i3 = pj6Var.c;
        int i4 = (((i3 - (i2 * 4)) * 8) / (pj6Var.d * i2)) + 1;
        if (i != i4) {
            defpackage.e2.h(defpackage.rz0.c(i4, i, "Expected frames per block: ", "; got: "), null);
            throw null;
        }
        int i5 = u56.a;
        int i6 = ((iMax + i) - 1) / i;
        this.e = new byte[i3 * i6];
        this.f = new os4(i * 2 * i2 * i6);
        int i7 = pj6Var.b;
        int i8 = ((pj6Var.c * i7) * 8) / i;
        uz2 uz2Var = new uz2();
        uz2Var.k = MimeTypes.AUDIO_RAW;
        uz2Var.f = i8;
        uz2Var.g = i8;
        uz2Var.l = iMax * 2 * i2;
        uz2Var.x = pj6Var.a;
        uz2Var.y = i7;
        uz2Var.z = 2;
        this.h = new vz2(uz2Var);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0042 A[LOOP:0: B:6:0x0027->B:12:0x0042, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:41:0x0048 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:0x0040 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0029  */
    /* JADX WARN: Code duplicated, block: B:9:0x002d  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x003e -> B:11:0x0040). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // yads.mj6
    public final boolean a(yads.wk0 r20, long r21) {
        /*
            Method dump skipped, instruction units count: 443
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: yads.lj6.a(yads.wk0, long):boolean");
    }

    @Override // yads.mj6
    public final void a(int i, long j) {
        this.a.a(new sj6(this.c, this.d, i, j));
        this.b.a(this.h);
    }

    @Override // yads.mj6
    public final void a(long j) {
        this.i = 0;
        this.j = j;
        this.k = 0;
        this.l = 0L;
    }
}
