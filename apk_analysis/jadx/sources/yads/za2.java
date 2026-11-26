package yads;

import android.graphics.Canvas;
import android.text.Layout;
import android.text.Spanned;
import defpackage.fh8;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class za2 {
    public final zo1 a;
    public final fs2 b;
    public final ArrayList c = new ArrayList();
    public final defpackage.cl4 d = new fh8(new defpackage.aw4(this, 9));
    public final defpackage.cl4 e = new fh8(new defpackage.js3(this, 7));
    public final defpackage.cl4 f = new fh8(new defpackage.eh4(this, 8));

    public za2(zo1 zo1Var, fs2 fs2Var) {
        this.a = zo1Var;
        this.b = fs2Var;
    }

    public static final yc4 b(za2 za2Var) {
        return new yc4(za2Var.a, za2Var.b);
    }

    public static final hl5 c(za2 za2Var) {
        return new hl5(za2Var.a, za2Var.b);
    }

    public final void a(Canvas canvas, Spanned spanned, Layout layout) {
        for (i41 i41Var : this.c) {
            int spanStart = spanned.getSpanStart(i41Var);
            int spanEnd = spanned.getSpanEnd(i41Var);
            int lineForOffset = layout.getLineForOffset(spanStart);
            int lineForOffset2 = layout.getLineForOffset(spanEnd);
            int primaryHorizontal = (int) layout.getPrimaryHorizontal(spanStart);
            int primaryHorizontal2 = (int) layout.getPrimaryHorizontal(spanEnd);
            if (i41Var.c instanceof f92) {
                ((q10) this.f.getValue()).a(canvas, layout, lineForOffset, lineForOffset2, primaryHorizontal, primaryHorizontal2, i41Var.b, i41Var.c);
            } else {
                ((ab2) (lineForOffset == lineForOffset2 ? this.d.getValue() : this.e.getValue())).a(canvas, layout, lineForOffset, lineForOffset2, primaryHorizontal, primaryHorizontal2, i41Var.b, i41Var.c);
            }
        }
    }

    public static final q10 a(za2 za2Var) {
        return new q10(za2Var.a.getContext(), za2Var.b);
    }
}
