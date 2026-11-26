package yads;

import androidx.viewpager2.widget.ViewPager2;

/* JADX INFO: loaded from: classes6.dex */
public final class bs4 extends ViewPager2.OnPageChangeCallback {
    public final oc4 a;
    public final ic4 b;
    public boolean c;

    public bs4(oc4 oc4Var, ic4 ic4Var) {
        this.a = oc4Var;
        this.b = ic4Var;
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public final void onPageScrollStateChanged(int i) {
        if (i == 0) {
            this.c = false;
            return;
        }
        if (i != 1) {
            return;
        }
        ic4 ic4Var = this.b;
        if (ic4Var != null) {
            ic4Var.a();
            ic4Var.e = false;
        }
        this.c = true;
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public final void onPageSelected(int i) {
        if (this.c) {
            oc4 oc4Var = this.a;
            if (oc4Var.d) {
                oc4Var.a("first_user_swipe");
                oc4Var.d = false;
            }
            this.c = false;
        }
    }
}
