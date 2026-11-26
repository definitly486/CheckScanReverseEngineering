package yads;

import androidx.media3.extractor.avi.AviExtractor;

/* JADX INFO: loaded from: classes6.dex */
public final class cs5 implements en {
    public final String a;

    public cs5(String str) {
        this.a = str;
    }

    @Override // yads.en
    public final int getType() {
        return AviExtractor.FOURCC_strn;
    }
}
