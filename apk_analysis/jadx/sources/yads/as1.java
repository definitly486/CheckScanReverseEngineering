package yads;

import androidx.viewpager2.widget.ViewPager2;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public final class as1 implements Runnable {
    public final /* synthetic */ bs1 b;
    public final /* synthetic */ nl3 c;

    public as1(ViewPager2 viewPager2, bs1 bs1Var, nl3 nl3Var) {
        this.b = bs1Var;
        this.c = nl3Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        bs1 bs1Var = this.b;
        int orientation = bs1Var.c.getOrientation();
        ViewPager2 viewPager2 = bs1Var.c;
        int width = orientation == 0 ? viewPager2.getWidth() : viewPager2.getHeight();
        this.c.invoke(Integer.valueOf(width));
        this.b.b = width;
    }
}
