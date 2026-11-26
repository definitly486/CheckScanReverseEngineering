package yads;

import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public final class qx2 extends bt1 {
    public final /* synthetic */ nl3 b;

    public qx2(nl3 nl3Var) {
        this.b = nl3Var;
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public final void onPageSelected(int i) {
        this.b.invoke(Integer.valueOf(i));
    }
}
