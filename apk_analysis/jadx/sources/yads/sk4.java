package yads;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes6.dex */
public final class sk4 extends FrameLayout {
    public final v65 a;
    public final wz3 b;

    /* JADX WARN: Multi-variable type inference failed */
    public sk4(Context context, v65 v65Var, wz3 wz3Var) {
        super(context);
        this.a = v65Var;
        this.b = wz3Var;
        addView(v65Var);
        if (wz3Var == 0 || !(wz3Var instanceof View)) {
            return;
        }
        addView((View) wz3Var);
    }
}
