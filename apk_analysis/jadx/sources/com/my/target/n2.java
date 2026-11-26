package com.my.target;

import androidx.recyclerview.widget.RecyclerView;
import com.my.target.core.ui.views.promo.style2.cards.CardsLayoutManagerS2;
import defpackage.aea;
import defpackage.fo9;
import defpackage.mia;
import defpackage.pfa;
import defpackage.r0a;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class n2 implements aea, r2.a {
    public final fo9 a;
    public final mia b;
    public int c;

    public n2(fo9 fo9Var, mia miaVar) {
        this.a = fo9Var;
        this.b = miaVar;
    }

    @Override // defpackage.aea
    public final void a(r2 r2Var, int i) {
        this.c = i;
        ArrayList arrayList = this.b.d;
        fo9 fo9Var = this.a;
        if (!arrayList.contains(fo9Var)) {
            m1.d(fo9Var.a, "render", 1, null);
            arrayList.add(fo9Var);
        }
        r2Var.setBanner(fo9Var);
        r2Var.setListener(this);
    }

    @Override // defpackage.aea
    public final void b(x1 x1Var) {
        x1Var.setBanner(null);
        x1Var.setListener(null);
    }

    public final void c(boolean z, int i, pfa pfaVar) {
        RecyclerView.SmoothScroller smoothScrollerCreateScroller;
        int i2 = this.c;
        mia miaVar = this.b;
        com.my.target.core.ui.views.promo.style2.cards.b bVar = miaVar.a;
        CardsLayoutManagerS2 cardsLayoutManagerS2 = bVar.c;
        if (i2 >= cardsLayoutManagerS2.findFirstCompletelyVisibleItemPosition() && i2 <= cardsLayoutManagerS2.findLastCompletelyVisibleItemPosition()) {
            if (z) {
                miaVar.b.a(this.a, i, pfaVar);
                return;
            }
            return;
        }
        r0a r0aVar = bVar.d;
        if (i2 == -1) {
            r0aVar.getClass();
            return;
        }
        RecyclerView recyclerView = r0aVar.g;
        if (recyclerView == null || recyclerView.getLayoutManager() == null || (smoothScrollerCreateScroller = r0aVar.createScroller(r0aVar.g.getLayoutManager())) == null) {
            return;
        }
        smoothScrollerCreateScroller.setTargetPosition(i2);
        r0aVar.g.getLayoutManager().startSmoothScroll(smoothScrollerCreateScroller);
    }
}
