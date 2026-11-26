package yads;

import android.util.DisplayMetrics;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes6.dex */
public final class hi2 extends ji2 {
    public final cy1 a;
    public final jp0 b;
    public final DisplayMetrics c;

    public hi2(cy1 cy1Var, jp0 jp0Var) {
        this.a = cy1Var;
        this.b = jp0Var;
        this.c = cy1Var.getResources().getDisplayMetrics();
    }

    @Override // yads.ji2
    public final void a(int i) {
        int iA = oi2.a(this.a);
        if (i < 0 || i >= iA) {
            return;
        }
        this.a.smoothScrollToPosition(i);
    }

    @Override // yads.ji2
    public final void b(int i) {
        int iA = oi2.a(this.a);
        if (i < 0 || i >= iA) {
            return;
        }
        this.a.scrollToPosition(i);
    }

    @Override // yads.ji2
    public final DisplayMetrics c() {
        return this.c;
    }

    @Override // yads.ji2
    public final int d() {
        cy1 cy1Var = this.a;
        RecyclerView.LayoutManager layoutManager = cy1Var.getLayoutManager();
        LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
        Integer numValueOf = linearLayoutManager != null ? Integer.valueOf(linearLayoutManager.getOrientation()) : null;
        return (numValueOf != null && numValueOf.intValue() == 0) ? cy1Var.computeHorizontalScrollOffset() : cy1Var.computeVerticalScrollOffset();
    }

    @Override // yads.ji2
    public final int e() {
        return oi2.b(this.a);
    }

    @Override // yads.ji2
    public final int a() {
        return oi2.a(this.a, this.b);
    }

    @Override // yads.ji2
    public final int b() {
        return oi2.a(this.a);
    }

    @Override // yads.ji2
    public final void a(int i, g12 g12Var, boolean z) {
        oi2.a(this.a, i, g12Var, this.c, z);
    }

    @Override // yads.ji2
    public final void a(boolean z) {
        cy1 cy1Var = this.a;
        oi2.a(cy1Var, oi2.b(cy1Var), g12.PX, this.c, z);
    }
}
