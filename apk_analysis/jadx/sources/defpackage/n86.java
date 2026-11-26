package defpackage;

import android.graphics.Canvas;
import android.graphics.RectF;

/* JADX INFO: loaded from: classes4.dex */
public final class n86 extends rq {
    @Override // defpackage.rq, defpackage.ka1
    public final boolean c(Canvas canvas, RectF rectF) {
        if (super.c(canvas, rectF)) {
            return true;
        }
        canvas.drawArc(this.i, this.p, this.q, true, this.l);
        return true;
    }
}
