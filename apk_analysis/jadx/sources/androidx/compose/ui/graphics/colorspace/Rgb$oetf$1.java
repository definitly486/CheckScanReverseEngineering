package androidx.compose.ui.graphics.colorspace;

import defpackage.gh4;
import defpackage.kx6;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class Rgb$oetf$1 extends gh4 implements nl3<Double, Double> {
    final /* synthetic */ Rgb this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Rgb$oetf$1(Rgb rgb) {
        super(1);
        this.this$0 = rgb;
    }

    public final Double invoke(double d) {
        return Double.valueOf(kx6.c(this.this$0.getOetfOrig$ui_graphics().invoke(d), this.this$0.min, this.this$0.max));
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ Double invoke(Double d) {
        return invoke(d.doubleValue());
    }
}
