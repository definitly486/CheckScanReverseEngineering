package defpackage;

import android.graphics.Canvas;
import android.graphics.RectF;

/* JADX INFO: loaded from: classes4.dex */
public final class dq4 extends rq {
    @Override // defpackage.rq, defpackage.ka1
    public final boolean c(Canvas canvas, RectF rectF) {
        if (super.c(canvas, rectF)) {
            return true;
        }
        float f = this.q;
        if (f != 0.0f) {
            canvas.drawArc(this.i, this.p, f, false, this.l);
        }
        return true;
    }
}
