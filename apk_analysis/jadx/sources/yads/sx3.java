package yads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.monetization.ads.fullscreen.template.view.ExtendedViewContainer;

/* JADX INFO: loaded from: classes6.dex */
public final class sx3 implements wx3 {
    public final ExtendedViewContainer a;
    public final float b;
    public final Context c;
    public final vx3 d;

    public sx3(ExtendedViewContainer extendedViewContainer, float f) {
        Context applicationContext = extendedViewContainer.getContext().getApplicationContext();
        vx3 vx3Var = new vx3();
        this.a = extendedViewContainer;
        this.b = f;
        this.c = applicationContext;
        this.d = vx3Var;
    }

    @Override // yads.wx3
    public final vx3 a(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int iRound = Math.round(eh6.e(this.c) * this.b);
        ViewGroup.LayoutParams layoutParams = this.a.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams != null) {
            iRound = (iRound - marginLayoutParams.leftMargin) - marginLayoutParams.rightMargin;
        }
        this.d.a = View.MeasureSpec.makeMeasureSpec((int) Math.max(Math.min(size, iRound), 0.0d), mode);
        vx3 vx3Var = this.d;
        vx3Var.b = i2;
        return vx3Var;
    }
}
