package yads;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes6.dex */
public final class an5 {
    public int a;
    public int b;

    public final void a(Canvas canvas, int i, Drawable drawable, int i2, cw5 cw5Var) {
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth() / 2;
            drawable.setBounds(i - intrinsicWidth, (this.b / 2) - (drawable.getIntrinsicHeight() / 2), intrinsicWidth + i, (drawable.getIntrinsicHeight() / 2) + (this.b / 2));
            drawable.draw(canvas);
        }
        if (cw5Var != null) {
            String strValueOf = String.valueOf(i2);
            bw5 bw5Var = cw5Var.b;
            bw5Var.d = strValueOf;
            bw5Var.c.getTextBounds(strValueOf, 0, strValueOf != null ? strValueOf.length() : 0, bw5Var.b);
            bw5Var.e = bw5Var.c.measureText(bw5Var.d) / 2.0f;
            bw5Var.f = bw5Var.b.height() / 2.0f;
            cw5Var.invalidateSelf();
            int intrinsicWidth2 = cw5Var.getIntrinsicWidth() / 2;
            cw5Var.setBounds(i - intrinsicWidth2, (this.b / 2) - (cw5Var.getIntrinsicHeight() / 2), i + intrinsicWidth2, (cw5Var.getIntrinsicHeight() / 2) + (this.b / 2));
            cw5Var.draw(canvas);
        }
    }
}
