package defpackage;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes5.dex */
public final class aw5 extends RecyclerView.OnScrollListener {
    public final LinearLayoutManager h;
    public final ll3<j59> i;

    public aw5(LinearLayoutManager linearLayoutManager, ll3<j59> ll3Var) {
        this.h = linearLayoutManager;
        this.i = ll3Var;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public final void onScrolled(RecyclerView recyclerView, int i, int i2) {
        recyclerView.getClass();
        if (i > 0) {
            LinearLayoutManager linearLayoutManager = this.h;
            int childCount = linearLayoutManager.getChildCount();
            if (linearLayoutManager.findFirstVisibleItemPosition() + childCount >= linearLayoutManager.getItemCount()) {
                this.i.invoke();
            }
        }
    }
}
