package yads;

import android.view.View;
import androidx.viewpager2.widget.ViewPager2;
import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public final class sc4 implements View.OnAttachStateChangeListener {
    public final ic4 a;
    public final long b;

    public sc4(ic4 ic4Var, long j) {
        this.a = ic4Var;
        this.b = j;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        ic4 ic4Var = this.a;
        long j = this.b;
        if (j <= 0 || !ic4Var.e) {
            return;
        }
        ic4Var.a();
        e55 e55Var = ic4Var.c;
        defpackage.ze4 ze4Var = ic4.f[0];
        ViewPager2 viewPager2 = (ViewPager2) e55Var.a.get();
        j59 j59Var = null;
        if (viewPager2 != null) {
            kc4 kc4Var = new kc4(viewPager2, ic4Var.a, ic4Var.b);
            dw3 dw3Var = new dw3();
            ic4Var.d = dw3Var;
            if (kc4Var.b == zx.ACTIVE) {
                defpackage.mb4 mb4Var = dw3Var.b;
                if (mb4Var != null) {
                    mb4Var.cancel(null);
                }
                dw3Var.b = defpackage.av0.c(dw3Var.a, null, null, new cw3(j, kc4Var, null), 3);
            }
            j59Var = j59.a;
        }
        if (j59Var == null) {
            ic4Var.a();
            ic4Var.e = false;
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.a.a();
    }
}
