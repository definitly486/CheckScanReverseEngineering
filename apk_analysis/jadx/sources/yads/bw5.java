package yads;

import android.graphics.Paint;
import android.graphics.Rect;

/* JADX INFO: loaded from: classes6.dex */
public final class bw5 {
    public final dn5 a;
    public final Rect b = new Rect();
    public final Paint c;
    public String d;
    public float e;
    public float f;

    public bw5(dn5 dn5Var) {
        this.a = dn5Var;
        Paint paint = new Paint(1);
        paint.setTextSize(dn5Var.a);
        paint.setLetterSpacing(dn5Var.b);
        paint.setColor(dn5Var.f);
        paint.setTypeface(dn5Var.c);
        paint.setStyle(Paint.Style.FILL);
        if (kw5.a()) {
            paint.setFontVariationSettings(null);
        }
        this.c = paint;
    }
}
