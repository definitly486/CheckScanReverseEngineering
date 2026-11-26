package yads;

import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public final class rx2 {
    public final et1 a;
    public final int b;
    public final float c;
    public final sx2 d;
    public final ts1 e;
    public final boolean f;
    public final wr1 g;

    public rx2(et1 et1Var, int i, float f, sx2 sx2Var, ts1 ts1Var, boolean z, wr1 wr1Var) {
        this.a = et1Var;
        this.b = i;
        this.c = f;
        this.d = sx2Var;
        this.e = ts1Var;
        this.f = z;
        this.g = wr1Var;
        a();
    }

    public final void a() {
        if (this.d.c() == 0.0f) {
            return;
        }
        ViewPager2 viewPager2 = this.a.a;
        float fC = this.b / (this.d.c() + this.c);
        RecyclerView recyclerViewH = this.a.h();
        if (recyclerViewH != null) {
            recyclerViewH.setItemViewCacheSize(((int) Math.ceil(fC)) + 2);
        }
        if (this.d.b()) {
            viewPager2.setOffscreenPageLimit(Math.max((int) Math.ceil(fC - 1.0f), 1));
            return;
        }
        float fA = this.d.a();
        if (fA > this.c) {
            viewPager2.setOffscreenPageLimit(1);
            return;
        }
        if (!this.f) {
            ts1 ts1Var = this.e;
            if (ts1Var.g < fA || ts1Var.h < fA) {
                defpackage.zh zhVar = new defpackage.zh(this, 5);
                zhVar.invoke(Integer.valueOf(viewPager2.getCurrentItem()));
                this.a.setChangePageCallbackForOffScreenPages$mobileads_externalRelease(new qx2(zhVar));
                return;
            }
        }
        viewPager2.setOffscreenPageLimit(-1);
    }

    public static final j59 a(rx2 rx2Var, int i) {
        ViewPager2 viewPager2 = rx2Var.a.a;
        int i2 = 1;
        if (i != 0 && i != rx2Var.g.o.size() - 1) {
            i2 = -1;
        }
        viewPager2.setOffscreenPageLimit(i2);
        return j59.a;
    }
}
