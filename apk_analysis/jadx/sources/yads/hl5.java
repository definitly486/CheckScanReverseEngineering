package yads;

import android.graphics.Canvas;
import android.text.Layout;

/* JADX INFO: loaded from: classes6.dex */
public final class hl5 extends ab2 {
    public final zo1 a;
    public final fs2 b;

    public hl5(zo1 zo1Var, fs2 fs2Var) {
        this.a = zo1Var;
        this.b = fs2Var;
    }

    @Override // yads.ab2
    public final void a(Canvas canvas, Layout layout, int i, int i2, int i3, int i4, o92 o92Var, h92 h92Var) {
        int lineTop = layout.getLineTop(i);
        if (i == 0) {
            lineTop -= layout.getTopPadding();
        }
        int iA = ab2.a(layout, i);
        int iMin = Math.min(i3, i4);
        int iMax = Math.max(i3, i4);
        rn rnVar = new rn(this.a.getResources().getDisplayMetrics(), o92Var, h92Var, canvas, this.b);
        rnVar.a(rnVar.g, iMin, lineTop, iMax, iA);
    }
}
