package yads;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes6.dex */
public final class m46 extends RecyclerView.OnScrollListener {
    public final String a;
    public final bi2 b;
    public final RecyclerView.LayoutManager c;

    /* JADX WARN: Multi-variable type inference failed */
    public m46(String str, bi2 bi2Var, tg1 tg1Var) {
        this.a = str;
        this.b = bi2Var;
        this.c = (RecyclerView.LayoutManager) tg1Var;
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [androidx.recyclerview.widget.RecyclerView$LayoutManager, yads.tg1] */
    /* JADX WARN: Type inference failed for: r4v2, types: [androidx.recyclerview.widget.RecyclerView$LayoutManager, yads.tg1] */
    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public final void onScrolled(RecyclerView recyclerView, int i, int i2) {
        View view;
        super.onScrolled(recyclerView, i, i2);
        int i3 = this.c.i();
        RecyclerView.ViewHolder viewHolderFindViewHolderForLayoutPosition = recyclerView.findViewHolderForLayoutPosition(i3);
        this.b.b.put(this.a, new e23(i3, (viewHolderFindViewHolderForLayoutPosition == null || (view = viewHolderFindViewHolderForLayoutPosition.itemView) == null) ? 0 : this.c.b(view)));
    }
}
