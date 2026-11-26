package yads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes6.dex */
public final class rx3 implements wx3 {
    public final ViewGroup a;
    public final float b;
    public final Context c;
    public final vx3 d;

    public rx3(ViewGroup viewGroup, float f) {
        Context applicationContext = viewGroup.getContext().getApplicationContext();
        vx3 vx3Var = new vx3();
        this.a = viewGroup;
        this.b = f;
        this.c = applicationContext;
        this.d = vx3Var;
    }

    @Override // yads.wx3
    public final vx3 a(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int iRound = Math.round(eh6.c(this.c) * this.b);
        ViewGroup.LayoutParams layoutParams = this.a.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams != null) {
            iRound = (iRound - marginLayoutParams.topMargin) - marginLayoutParams.bottomMargin;
        }
        int iMax = (int) Math.max(Math.min(size, iRound), 0.0d);
        vx3 vx3Var = this.d;
        vx3Var.a = i;
        vx3Var.b = View.MeasureSpec.makeMeasureSpec(iMax, mode);
        return this.d;
    }
}
