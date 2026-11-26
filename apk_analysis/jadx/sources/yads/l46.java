package yads;

import androidx.viewpager2.widget.ViewPager2;

/* JADX INFO: loaded from: classes6.dex */
public final class l46 extends ViewPager2.OnPageChangeCallback {
    public final String a;
    public final bi2 b;

    public l46(String str, bi2 bi2Var) {
        this.a = str;
        this.b = bi2Var;
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public final void onPageSelected(int i) {
        if (i != -1) {
            bi2 bi2Var = this.b;
            bi2Var.b.put(this.a, new ks4(i));
        }
    }
}
