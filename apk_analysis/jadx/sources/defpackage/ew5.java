package defpackage;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes6.dex */
public final class ew5 extends RecyclerView.OnScrollListener {
    public final /* synthetic */ RecyclerView h;
    public final /* synthetic */ int i;
    public final /* synthetic */ ll3<j59> j;

    public ew5(RecyclerView recyclerView, int i, ll3<j59> ll3Var) {
        this.h = recyclerView;
        this.i = i;
        this.j = ll3Var;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public final void onScrolled(RecyclerView recyclerView, int i, int i2) {
        recyclerView.getClass();
        if (i2 > 0) {
            RecyclerView.LayoutManager layoutManager = this.h.getLayoutManager();
            LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
            if (linearLayoutManager == null) {
                return;
            }
            if (linearLayoutManager.findLastCompletelyVisibleItemPosition() + 1 + this.i >= linearLayoutManager.getItemCount()) {
                this.j.invoke();
            }
        }
    }
}
