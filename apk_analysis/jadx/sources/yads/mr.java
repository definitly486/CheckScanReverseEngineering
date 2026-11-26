package yads;

import androidx.viewpager.widget.ViewPager;

/* JADX INFO: loaded from: classes6.dex */
public final class mr implements fr {
    public final ViewPager a;

    public mr(ViewPager viewPager) {
        this.a = viewPager;
    }

    @Override // yads.fr
    public final void a(kr krVar) {
        this.a.setCurrentItem(krVar.b);
    }

    @Override // yads.fr
    public final void b(kr krVar) {
    }
}
