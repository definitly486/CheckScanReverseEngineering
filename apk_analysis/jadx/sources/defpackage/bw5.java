package defpackage;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes5.dex */
public final class bw5 extends RecyclerView.OnScrollListener {
    public final LinearLayoutManager h;
    public final p78 i;

    public bw5(LinearLayoutManager linearLayoutManager, p78 p78Var) {
        linearLayoutManager.getClass();
        this.h = linearLayoutManager;
        this.i = p78Var;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public final void onScrolled(RecyclerView recyclerView, int i, int i2) {
        recyclerView.getClass();
        if (i < 0) {
            LinearLayoutManager linearLayoutManager = this.h;
            int childCount = linearLayoutManager.getChildCount();
            if (linearLayoutManager.findFirstVisibleItemPosition() + childCount >= linearLayoutManager.getItemCount()) {
                this.i.invoke();
            }
        }
    }
}
