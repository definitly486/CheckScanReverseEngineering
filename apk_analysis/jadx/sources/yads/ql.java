package yads;

import androidx.media3.common.MimeTypes;

/* JADX INFO: loaded from: classes6.dex */
public final class ql implements ol {
    public final int a;
    public final int b;
    public final os4 c;

    public ql(kl klVar, vz2 vz2Var) {
        os4 os4Var = klVar.b;
        this.c = os4Var;
        os4Var.e(12);
        int iN = os4Var.n();
        if (MimeTypes.AUDIO_RAW.equals(vz2Var.m)) {
            int iA = u56.a(vz2Var.B, vz2Var.z);
            if (iN == 0 || iN % iA != 0) {
                sv3.d("AtomParsers", "Audio sample size mismatch. stsd sample size: " + iA + ", stsz sample size: " + iN);
                iN = iA;
            }
        }
        this.a = iN == 0 ? -1 : iN;
        this.b = os4Var.n();
    }

    @Override // yads.ol
    public final int a() {
        return this.a;
    }

    @Override // yads.ol
    public final int b() {
        return this.b;
    }

    @Override // yads.ol
    public final int c() {
        int i = this.a;
        return i == -1 ? this.c.n() : i;
    }
}
