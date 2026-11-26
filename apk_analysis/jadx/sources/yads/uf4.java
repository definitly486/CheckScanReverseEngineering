package yads;

import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import defpackage.rm9;

/* JADX INFO: loaded from: classes6.dex */
public final class uf4 {
    public static final Object d = new Object();
    public static volatile uf4 e;
    public final defpackage.y22 a = xn.a(rm9.b(), new i90());
    public boolean b;
    public defpackage.mb4 c;

    public final void a(View view, MotionEvent motionEvent) {
        if (((view instanceof TextView) || (view instanceof b45)) && motionEvent.getAction() == 1) {
            if (!this.b) {
                view.setAlpha(view.getAlpha() / 2.0f);
                this.b = true;
            }
            defpackage.mb4 mb4Var = this.c;
            if (mb4Var != null) {
                mb4Var.cancel(null);
            }
            this.c = defpackage.av0.c(this.a, null, null, new tf4(this, view, null), 3);
        }
    }

    public static final void a(uf4 uf4Var, View view) {
        if (uf4Var.b) {
            view.setAlpha(view.getAlpha() * 2.0f);
            uf4Var.b = false;
        }
    }
}
