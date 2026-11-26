package yads;

import android.media.MediaCodec;
import defpackage.fh;

/* JADX INFO: loaded from: classes6.dex */
public final class yy3 extends Exception {
    public final String b;
    public final boolean c;
    public final vy3 d;
    public final String e;

    /* JADX WARN: Illegal instructions before constructor call */
    public yy3(vz2 vz2Var, ez3 ez3Var, boolean z, int i) {
        String str = "Decoder init failed: [" + i + "], " + vz2Var;
        String str2 = vz2Var.m;
        StringBuilder sbD = fh.d("com.monetization.ads.exoplayer2.mediacodec.MediaCodecRenderer_", i < 0 ? "neg_" : "");
        sbD.append(Math.abs(i));
        this(str, ez3Var, str2, z, null, sbD.toString());
    }

    public yy3(vz2 vz2Var, Exception exc, boolean z, vy3 vy3Var) {
        this("Decoder init failed: " + vy3Var.a + ", " + vz2Var, exc, vz2Var.m, z, vy3Var, (u56.a < 21 || !(exc instanceof MediaCodec.CodecException)) ? null : ((MediaCodec.CodecException) exc).getDiagnosticInfo());
    }

    public yy3(String str, Throwable th, String str2, boolean z, vy3 vy3Var, String str3) {
        super(str, th);
        this.b = str2;
        this.c = z;
        this.d = vy3Var;
        this.e = str3;
    }
}
