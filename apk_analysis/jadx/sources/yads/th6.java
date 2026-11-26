package yads;

import android.graphics.Rect;
import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class th6 {
    public final pr4 a;
    public final vh6 b;

    public th6() {
        pr4 pr4Var = new pr4();
        vh6 vh6Var = new vh6();
        this.a = pr4Var;
        this.b = vh6Var;
    }

    public static String b(View view) {
        String str;
        int visibility = view.getVisibility();
        if (visibility == 0) {
            str = "VISIBLE";
        } else if (visibility != 4) {
            str = visibility != 8 ? "UNKNOWN" : "GONE";
        } else {
            str = "INVISIBLE";
        }
        return "view is not shown: visibility=" + str + ", attached=" + view.isAttachedToWindow();
    }

    public static String c(View view) {
        String str;
        if (view.isAttachedToWindow()) {
            str = (view.getWidth() <= 0 || view.getHeight() <= 0) ? "zero size" : "scrolled off";
        } else {
            str = "not attached";
        }
        return "view rect is null: ".concat(str);
    }

    public final uh6 a(View view) {
        if (!view.isShown()) {
            return new uh6(0, b(view));
        }
        if (view.getAlpha() == 0.0f) {
            return new uh6(0, "view is transparent");
        }
        Rect rectA = this.b.a(view);
        if (rectA == null) {
            return new uh6(0, c(view));
        }
        int iHeight = (rectA.height() * rectA.width()) - this.a.a(view, rectA);
        return new uh6(iHeight, iHeight <= 0 ? "no visible area" : null);
    }
}
