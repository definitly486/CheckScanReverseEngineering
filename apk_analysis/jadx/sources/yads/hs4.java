package yads;

import androidx.viewpager2.widget.ViewPager2;

/* JADX INFO: loaded from: classes6.dex */
public final class hs4 extends ViewPager2.OnPageChangeCallback {
    public int a = -1;
    public final defpackage.fr b = new defpackage.fr();
    public final /* synthetic */ is4 c;

    public hs4(is4 is4Var) {
        this.c = is4Var;
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public final void onPageScrollStateChanged(int i) {
        if (i == 0) {
            while (!this.b.isEmpty()) {
                int iIntValue = ((Number) this.b.removeFirst()).intValue();
                int i2 = cr3.a;
                vj5[] vj5VarArr = vj5.b;
                cr3.a();
                is4 is4Var = this.c;
                is4Var.a((cn1) ((vr1) is4Var.b).get(iIntValue));
            }
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public final void onPageSelected(int i) {
        int i2 = cr3.a;
        vj5[] vj5VarArr = vj5.b;
        cr3.a();
        if (this.a == i) {
            return;
        }
        if (i != -1) {
            this.b.addLast(Integer.valueOf(i));
        }
        if (this.a == -1) {
            while (!this.b.isEmpty()) {
                int iIntValue = ((Number) this.b.removeFirst()).intValue();
                int i3 = cr3.a;
                vj5[] vj5VarArr2 = vj5.b;
                cr3.a();
                is4 is4Var = this.c;
                is4Var.a((cn1) ((vr1) is4Var.b).get(iIntValue));
            }
        }
        this.a = i;
    }
}
