package yads;

import androidx.viewpager.widget.ViewPager;

/* JADX INFO: loaded from: classes6.dex */
public final class e62 implements ViewPager.OnPageChangeListener {
    public final tt a;
    public final bt0 b;
    public final bj2 c;
    public final m62 d;
    public y52 e;
    public int f = -1;

    public e62(tt ttVar, bt0 bt0Var, bj2 bj2Var, m62 m62Var, y52 y52Var) {
        this.a = ttVar;
        this.b = bt0Var;
        this.c = bj2Var;
        this.d = m62Var;
        this.e = y52Var;
    }

    public final void a(int i) {
        int i2 = this.f;
        if (i == i2) {
            return;
        }
        if (i2 != -1) {
            this.c.a(this.a, this.d, ((t52) this.e.q.get(i2)).a);
            vq0 vq0Var = this.a.a;
        }
        t52 t52Var = (t52) this.e.q.get(i);
        this.c.b(this.a, this.d, t52Var.a);
        vq0 vq0Var2 = this.a.a;
        vq0Var2.w.put(this.d, t52Var.a);
        this.f = i;
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public final void onPageScrollStateChanged(int i) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public final void onPageScrolled(int i, float f, int i2) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public final void onPageSelected(int i) {
        vq0 vq0Var = this.a.a;
        a(i);
    }
}
