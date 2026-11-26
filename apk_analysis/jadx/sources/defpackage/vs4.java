package defpackage;

import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes5.dex */
public final class vs4 extends GridLayoutManager.SpanSizeLookup {
    public final /* synthetic */ RecyclerView a;

    public vs4(RecyclerView recyclerView) {
        this.a = recyclerView;
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
    public final int getSpanSize(int i) {
        RecyclerView.Adapter adapter = this.a.getAdapter();
        i58 i58Var = adapter instanceof i58 ? (i58) adapter : null;
        return (i58Var != null ? i58Var.i.e(i) : null) instanceof qs4 ? 1 : 2;
    }
}
