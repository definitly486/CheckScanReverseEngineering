package yads;

import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;

/* JADX INFO: loaded from: classes6.dex */
public final class fs4 extends ViewPager2.OnPageChangeCallback {
    public final /* synthetic */ gs4 a;

    public fs4(gs4 gs4Var) {
        this.a = gs4Var;
    }

    /* JADX WARN: Code duplicated, block: B:6:0x000b A[PHI: r0
      0x000b: PHI (r0v9 float) = (r0v0 float), (r0v1 float) binds: [B:5:0x0009, B:8:0x0011] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public final void onPageScrolled(int i, float f, int i2) {
        ViewPager2 viewPager2;
        gs4 gs4Var = this.a;
        hg3 hg3Var = gs4Var.a;
        if (hg3Var != null) {
            float f2 = 0.0f;
            if (f < 0.0f) {
                f = f2;
            } else {
                f2 = 1.0f;
                if (f > 1.0f) {
                    f = f2;
                }
            }
            int i3 = gs4.e;
            et1 et1Var = gs4Var.b;
            RecyclerView.Adapter adapter = (et1Var == null || (viewPager2 = et1Var.a) == null) ? null : viewPager2.getAdapter();
            wr1 wr1Var = adapter instanceof wr1 ? (wr1) adapter : null;
            if (wr1Var != null) {
                i = wr1Var.e(i);
            }
            hg3Var.m = i;
            hg3Var.n = f;
            hg3Var.c.a(i, f);
            hg3Var.a(i, f);
            gs4Var.invalidate();
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public final void onPageSelected(int i) {
        ViewPager2 viewPager2;
        gs4 gs4Var = this.a;
        hg3 hg3Var = gs4Var.a;
        if (hg3Var != null) {
            int i2 = gs4.e;
            et1 et1Var = gs4Var.b;
            RecyclerView.Adapter adapter = (et1Var == null || (viewPager2 = et1Var.a) == null) ? null : viewPager2.getAdapter();
            wr1 wr1Var = adapter instanceof wr1 ? (wr1) adapter : null;
            if (wr1Var != null) {
                i = wr1Var.e(i);
            }
            hg3Var.m = i;
            hg3Var.n = 0.0f;
            hg3Var.c.onPageSelected(i);
            hg3Var.a(i, 0.0f);
            gs4Var.invalidate();
        }
    }
}
