package yads;

import androidx.viewpager2.widget.ViewPager2;

/* JADX INFO: loaded from: classes6.dex */
public final class ic4 {
    public static final /* synthetic */ defpackage.ze4[] f = {cb.a(ic4.class, "viewPager", "getViewPager()Landroidx/viewpager2/widget/ViewPager2;", 0)};
    public final wc4 a;
    public final oc4 b;
    public final e55 c;
    public dw3 d;
    public boolean e = true;

    public ic4(ViewPager2 viewPager2, wc4 wc4Var, oc4 oc4Var) {
        this.a = wc4Var;
        this.b = oc4Var;
        this.c = new e55(viewPager2);
    }

    public final void a() {
        dw3 dw3Var = this.d;
        if (dw3Var != null) {
            defpackage.mb4 mb4Var = dw3Var.b;
            if (mb4Var != null) {
                mb4Var.cancel(null);
            }
            dw3Var.b = null;
        }
        this.d = null;
    }
}
