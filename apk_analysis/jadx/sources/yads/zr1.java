package yads;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes6.dex */
public final class zr1 extends RecyclerView.OnScrollListener {
    public final /* synthetic */ et1 a;

    public zr1(et1 et1Var) {
        this.a = et1Var;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public final void onScrolled(RecyclerView recyclerView, int i, int i2) {
        super.onScrolled(recyclerView, i, i2);
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        layoutManager.getClass();
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
        RecyclerView.Adapter adapter = this.a.a.getAdapter();
        int itemCount = adapter != null ? adapter.getItemCount() : 0;
        int iFindFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
        int iFindLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
        if (iFindFirstVisibleItemPosition >= itemCount - 2 && i > 0) {
            recyclerView.scrollToPosition(2);
        } else {
            if (iFindLastVisibleItemPosition > 1 || i >= 0) {
                return;
            }
            recyclerView.scrollToPosition(itemCount - 3);
        }
    }
}
