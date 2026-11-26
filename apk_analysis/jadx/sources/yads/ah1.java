package yads;

import android.view.View;
import androidx.core.view.ViewGroupKt;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.jp7;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class ah1 extends RecyclerView.OnScrollListener {
    public final tt a;
    public final cy1 b;
    public final RecyclerView.LayoutManager c;
    public final vq0 d;
    public final int e;
    public int f;
    public boolean g;

    /* JADX WARN: Multi-variable type inference failed */
    public ah1(tt ttVar, cy1 cy1Var, tg1 tg1Var, og1 og1Var) {
        this.a = ttVar;
        this.b = cy1Var;
        this.c = (RecyclerView.LayoutManager) tg1Var;
        vq0 vq0Var = ttVar.a;
        this.d = vq0Var;
        this.e = vq0Var.G.b();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.recyclerview.widget.RecyclerView$LayoutManager, yads.tg1] */
    /* JADX WARN: Type inference failed for: r1v7, types: [androidx.recyclerview.widget.RecyclerView$LayoutManager, yads.tg1] */
    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public final void onScrollStateChanged(RecyclerView recyclerView, int i) {
        super.onScrollStateChanged(recyclerView, i);
        if (i == 1) {
            this.g = false;
        }
        if (i == 0) {
            this.d.n.c.getClass();
            fs2 fs2Var = this.a.b;
            this.c.i();
            this.c.g();
        }
    }

    /* JADX WARN: Type inference failed for: r8v25, types: [androidx.recyclerview.widget.RecyclerView$LayoutManager, yads.tg1] */
    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public final void onScrolled(RecyclerView recyclerView, int i, int i2) {
        super.onScrolled(recyclerView, i, i2);
        int iE = this.e;
        if (iE <= 0) {
            iE = this.c.e() / 20;
        }
        int iAbs = Math.abs(i2) + Math.abs(i) + this.f;
        this.f = iAbs;
        if (iAbs > iE) {
            this.f = 0;
            if (!this.g) {
                this.g = true;
                this.d.n.c.getClass();
            }
            bj2 bj2Var = (bj2) this.d.n.I.getValue();
            List listQ = jp7.q(ViewGroupKt.getChildren(this.b));
            Iterator it = bj2Var.g.entrySet().iterator();
            while (it.hasNext()) {
                if (!listQ.contains(((Map.Entry) it.next()).getKey())) {
                    it.remove();
                }
            }
            if (!bj2Var.l) {
                bj2Var.l = true;
                bj2Var.c.post(bj2Var.m);
            }
            for (View view : ViewGroupKt.getChildren(this.b)) {
                int childAdapterPosition = this.b.getChildAdapterPosition(view);
                if (childAdapterPosition != -1) {
                    RecyclerView.Adapter adapter = this.b.getAdapter();
                    adapter.getClass();
                    bj2Var.b(this.a, view, ((cn1) ((pg1) adapter).d().get(childAdapterPosition)).a);
                }
            }
            LinkedHashMap linkedHashMapA = bj2Var.a();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry entry : linkedHashMapA.entrySet()) {
                if (!jp7.i(ViewGroupKt.getChildren(this.b), entry.getKey())) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                View view2 = (View) entry2.getKey();
                br0 br0Var = (br0) entry2.getValue();
                tt ttVar = this.a;
                List listB = br0Var.a().b();
                if (listB != null) {
                    fs2 fs2Var = ttVar.b;
                    bj2Var.a(ttVar.a, fs2Var, view2, br0Var, defpackage.kx2.b, bj2.a(listB, fs2Var));
                }
            }
        }
    }
}
