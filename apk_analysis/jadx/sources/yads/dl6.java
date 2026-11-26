package yads;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes6.dex */
public final class dl6 extends bt1 {
    public final /* synthetic */ el6 b;

    public dl6(el6 el6Var) {
        this.b = el6Var;
    }

    @Override // yads.bt1, android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        el6 el6Var = this.b;
        int iA = el6Var.a();
        if (iA <= el6Var.f) {
            return;
        }
        el6Var.f = iA;
        et1 et1Var = el6Var.a;
        RecyclerView recyclerViewH = et1Var.h();
        if (recyclerViewH != null) {
            recyclerViewH.setItemViewCacheSize((el6Var.f * 2) + 3);
        }
        et1Var.a.setOffscreenPageLimit(el6Var.f);
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public final void onPageSelected(int i) {
        el6 el6Var = this.b;
        int iA = el6Var.a();
        if (iA <= el6Var.f) {
            return;
        }
        el6Var.f = iA;
        et1 et1Var = el6Var.a;
        RecyclerView recyclerViewH = et1Var.h();
        if (recyclerViewH != null) {
            recyclerViewH.setItemViewCacheSize((el6Var.f * 2) + 3);
        }
        et1Var.a.setOffscreenPageLimit(el6Var.f);
    }
}
