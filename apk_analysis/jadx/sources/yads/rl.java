package yads;

import androidx.media3.extractor.ts.PsExtractor;

/* JADX INFO: loaded from: classes6.dex */
public final class rl implements ol {
    public final os4 a;
    public final int b;
    public final int c;
    public int d;
    public int e;

    public rl(kl klVar) {
        os4 os4Var = klVar.b;
        this.a = os4Var;
        os4Var.e(12);
        this.c = os4Var.n() & 255;
        this.b = os4Var.n();
    }

    @Override // yads.ol
    public final int a() {
        return -1;
    }

    @Override // yads.ol
    public final int b() {
        return this.b;
    }

    @Override // yads.ol
    public final int c() {
        int i = this.c;
        if (i == 8) {
            return this.a.k();
        }
        if (i == 16) {
            return this.a.p();
        }
        int i2 = this.d;
        this.d = i2 + 1;
        if (i2 % 2 != 0) {
            return this.e & 15;
        }
        int iK = this.a.k();
        this.e = iK;
        return (iK & PsExtractor.VIDEO_STREAM_MASK) >> 4;
    }
}
