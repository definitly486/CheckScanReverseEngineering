package defpackage;

import androidx.lifecycle.Lifecycle;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.presentation.bonuses.main.view.BonusesMainNewFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class yq0 extends RecyclerView.AdapterDataObserver {
    public final /* synthetic */ BonusesMainNewFragment a;
    public final /* synthetic */ RecyclerView b;

    public yq0(BonusesMainNewFragment bonusesMainNewFragment, RecyclerView recyclerView) {
        this.a = bonusesMainNewFragment;
        this.b = recyclerView;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
    public final void onItemRangeInserted(int i, int i2) {
        if (i == 0 && this.a.getLifecycle().getCurrentState().isAtLeast(Lifecycle.State.RESUMED)) {
            RecyclerView.LayoutManager layoutManager = this.b.getLayoutManager();
            GridLayoutManager gridLayoutManager = layoutManager instanceof GridLayoutManager ? (GridLayoutManager) layoutManager : null;
            if (gridLayoutManager != null) {
                gridLayoutManager.scrollToPositionWithOffset(i, 0);
            }
        }
    }
}
