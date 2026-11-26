package yads;

import androidx.media3.extractor.avi.AviExtractor;

/* JADX INFO: loaded from: classes6.dex */
public final class jn implements en {
    public final int a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;

    public jn(int i, int i2, int i3, int i4, int i5) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
        this.e = i5;
    }

    @Override // yads.en
    public final int getType() {
        return AviExtractor.FOURCC_strh;
    }
}
