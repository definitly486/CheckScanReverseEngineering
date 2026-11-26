package yads;

import androidx.media3.extractor.avi.AviExtractor;

/* JADX INFO: loaded from: classes6.dex */
public final class zr5 implements en {
    public final vz2 a;

    public zr5(vz2 vz2Var) {
        this.a = vz2Var;
    }

    @Override // yads.en
    public final int getType() {
        return AviExtractor.FOURCC_strf;
    }
}
