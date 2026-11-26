package defpackage;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes5.dex */
public final class zi6 extends RecyclerView.ItemDecoration {
    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        rect.getClass();
        view.getClass();
        recyclerView.getClass();
        state.getClass();
        if (recyclerView.getChildAdapterPosition(view) == -1) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        GridLayoutManager.LayoutParams layoutParams2 = layoutParams instanceof GridLayoutManager.LayoutParams ? (GridLayoutManager.LayoutParams) layoutParams : null;
        int spanIndex = layoutParams2 != null ? layoutParams2.getSpanIndex() : 0;
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        GridLayoutManager gridLayoutManager = layoutManager instanceof GridLayoutManager ? (GridLayoutManager) layoutManager : null;
        int spanCount = gridLayoutManager != null ? gridLayoutManager.getSpanCount() : 1;
        if (spanIndex == 0) {
            rect.right = pl2.e(4);
        } else if (spanIndex == spanCount - 1) {
            rect.left = pl2.e(4);
        } else {
            rect.left = pl2.e(4);
            rect.right = pl2.e(4);
        }
        rect.top = pl2.e(16);
    }
}
