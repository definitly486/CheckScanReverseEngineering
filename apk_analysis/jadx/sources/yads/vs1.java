package yads;

import android.view.View;
import androidx.core.view.ViewGroupKt;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import defpackage.u96;
import defpackage.zo7;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class vs1 extends ViewPager2.OnPageChangeCallback {
    public final vr1 a;
    public final tt b;
    public final RecyclerView c;
    public final et1 d;
    public int e = -1;
    public final vq0 f;
    public final int g;
    public int h;

    public vs1(ur1 ur1Var, vr1 vr1Var, tt ttVar, RecyclerView recyclerView, et1 et1Var) {
        this.a = vr1Var;
        this.b = ttVar;
        this.c = recyclerView;
        this.d = et1Var;
        vq0 vq0Var = ttVar.a;
        this.f = vq0Var;
        this.g = vq0Var.G.b();
    }

    public final void a() {
        View next;
        int childAdapterPosition;
        Iterator<View> it = ViewGroupKt.getChildren(this.c).iterator();
        while (it.hasNext() && (childAdapterPosition = this.c.getChildAdapterPosition((next = it.next()))) != -1) {
            cn1 cn1Var = (cn1) this.a.get(childAdapterPosition);
            bj2 bj2Var = (bj2) this.f.n.I.getValue();
            tt ttVar = this.b;
            fs2 fs2Var = cn1Var.b;
            if (!defpackage.aa4.e(ttVar.b, fs2Var)) {
                ttVar = new tt(ttVar.a, fs2Var);
            }
            bj2Var.b(ttVar, next, cn1Var.a);
        }
    }

    public final void b() {
        zo7<View> children = ViewGroupKt.getChildren(this.c);
        children.getClass();
        Iterator<View> it = children.iterator();
        int i = 0;
        while (it.hasNext()) {
            it.next();
            i++;
            if (i < 0) {
                u96.n();
                throw null;
            }
        }
        if (i > 0) {
            a();
            return;
        }
        RecyclerView recyclerView = this.c;
        if (!oh6.a(recyclerView) || recyclerView.isLayoutRequested()) {
            recyclerView.addOnLayoutChangeListener(new us1(this));
        } else {
            a();
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public final void onPageScrollStateChanged(int i) {
        super.onPageScrollStateChanged(i);
        if (i == 0) {
            b();
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public final void onPageScrolled(int i, float f, int i2) {
        super.onPageScrolled(i, f, i2);
        int width = this.g;
        if (width <= 0) {
            RecyclerView.LayoutManager layoutManager = this.c.getLayoutManager();
            width = (layoutManager != null ? layoutManager.getWidth() : 0) / 20;
        }
        int i3 = this.h + i2;
        this.h = i3;
        if (i3 > width) {
            this.h = 0;
            b();
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public final void onPageSelected(int i) {
        super.onPageSelected(i);
        b();
        int i2 = this.e;
        if (i == i2) {
            return;
        }
        if (i2 != -1) {
            vq0 vq0Var = this.f;
        }
        if (i == -1) {
            this.e = i;
            return;
        }
        if (this.e != -1) {
            this.f.n.c.getClass();
            fs2 fs2Var = ((cn1) this.a.get(i)).b;
        }
        br0 br0Var = ((cn1) this.a.get(i)).a;
        if (jf2.a(br0Var.a())) {
            vq0 vq0Var2 = this.f;
            vq0Var2.w.put(this.d, br0Var);
        }
        this.e = i;
    }
}
