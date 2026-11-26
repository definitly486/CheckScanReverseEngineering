package defpackage;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.presentation.notifications.view.NotificationsFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class zv5 extends RecyclerView.OnScrollListener {
    public final LinearLayoutManager h;
    public final ov i;

    public zv5(LinearLayoutManager linearLayoutManager, ov ovVar) {
        this.h = linearLayoutManager;
        this.i = ovVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public final void onScrollStateChanged(RecyclerView recyclerView, int i) {
        recyclerView.getClass();
        super.onScrollStateChanged(recyclerView, i);
        if (i == 0 || i == 2) {
            LinearLayoutManager linearLayoutManager = this.h;
            linearLayoutManager.findFirstVisibleItemPosition();
            int iFindLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
            ov ovVar = this.i;
            ovVar.getClass();
            ((NotificationsFragment) ovVar.g).o().onItemIsSeen(iFindLastVisibleItemPosition);
            j59 j59Var = j59.a;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public final void onScrolled(RecyclerView recyclerView, int i, int i2) {
        recyclerView.getClass();
        super.onScrolled(recyclerView, i, i2);
        if (i2 > 0) {
            LinearLayoutManager linearLayoutManager = this.h;
            linearLayoutManager.findFirstVisibleItemPosition();
            int iFindLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
            ov ovVar = this.i;
            ovVar.getClass();
            ((NotificationsFragment) ovVar.g).o().onItemIsSeen(iFindLastVisibleItemPosition);
            j59 j59Var = j59.a;
        }
    }
}
