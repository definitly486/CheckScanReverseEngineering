package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes6.dex */
public final class z90 implements if6 {
    public final p90 a;
    public final ff6 b;
    public final hd6 c;
    public final ad6 d;
    public boolean e;

    public z90(p90 p90Var, ff6 ff6Var, hd6 hd6Var) {
        ad6 ad6Var = new ad6(new q90());
        this.a = p90Var;
        this.b = ff6Var;
        this.c = hd6Var;
        this.d = ad6Var;
    }

    @Override // yads.if6, yads.hf6
    public final void a(gf6 gf6Var) {
        String str;
        int iOrdinal = gf6Var.ordinal();
        if (iOrdinal == 0) {
            str = "firstQuartile";
        } else if (iOrdinal == 1) {
            str = "midpoint";
        } else {
            if (iOrdinal != 2) {
                defpackage.me0.e();
                return;
            }
            str = "thirdQuartile";
        }
        this.b.a(this.a, str);
    }

    @Override // yads.if6, yads.hf6
    public final void b() {
        this.b.a(this.a, "complete");
    }

    @Override // yads.if6, yads.hf6
    public final void c() {
        this.b.a(this.a, "resume");
    }

    @Override // yads.if6, yads.hf6
    public final void d() {
        this.b.a(this.a, "pause");
    }

    @Override // yads.if6, yads.hf6
    public final void h() {
        this.b.a(this.a, "creativeView");
    }

    @Override // yads.if6, yads.hf6
    public final void i() {
        this.b.a(new u90(this.a), "creativeRenderingStart");
    }

    @Override // yads.if6, yads.hf6
    public final void k() {
        this.e = false;
    }

    @Override // yads.if6, yads.hf6
    public final void l() {
        this.b.a(this.a, "mute");
    }

    @Override // yads.if6, yads.hf6
    public final void m() {
        if (!this.e) {
            this.e = true;
            this.b.a(this.a, TtmlNode.START);
        }
        this.b.a(this.a, "clickTracking");
    }

    @Override // yads.if6, yads.hf6
    public final void a() {
        this.b.a(this.a, "unmute");
    }

    @Override // yads.if6, yads.hf6
    public final void a(long j, float f) {
        if (this.e) {
            return;
        }
        this.e = true;
        this.b.a(this.a, TtmlNode.START);
    }
}
