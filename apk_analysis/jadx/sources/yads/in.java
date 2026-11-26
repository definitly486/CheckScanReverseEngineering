package yads;

import androidx.media3.extractor.avi.AviExtractor;

/* JADX INFO: loaded from: classes6.dex */
public final class in implements en {
    public final int a;
    public final int b;
    public final int c;

    public in(int i, int i2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = i3;
    }

    @Override // yads.en
    public final int getType() {
        return AviExtractor.FOURCC_avih;
    }
}
