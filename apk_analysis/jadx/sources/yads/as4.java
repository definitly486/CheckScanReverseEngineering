package yads;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;

/* JADX INFO: loaded from: classes6.dex */
public final class as4 extends RecyclerView.ItemDecoration {
    public final int a;
    public final int b;
    public final int c;

    public as4(int i, int i2, int i3, int i4) {
        i2 = (i4 & 4) != 0 ? 0 : i2;
        this.a = i;
        this.b = i2;
        this.c = i3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        boolean z = true;
        if ((layoutManager instanceof StaggeredGridLayoutManager ? ((StaggeredGridLayoutManager) layoutManager).getSpanCount() : 1) != 1) {
            int i = this.a / 2;
            int i2 = this.b / 2;
            int i3 = this.c;
            if (i3 == 0) {
                rect.set(i, i2, i, i2);
                return;
            } else {
                if (i3 != 1) {
                    return;
                }
                rect.set(i2, i, i2, i);
                return;
            }
        }
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        if (adapter != null) {
            int itemCount = adapter.getItemCount();
            int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
            if (childAdapterPosition == -1) {
                return;
            }
            boolean z2 = childAdapterPosition == itemCount - 1;
            int i4 = this.c;
            if (i4 != 0) {
                if (i4 != 1) {
                    return;
                }
                rect.set(0, 0, 0, z2 ? 0 : this.a);
            } else {
                if (!oh6.b(recyclerView)) {
                    z = z2;
                } else if (childAdapterPosition != 0) {
                    z = false;
                }
                rect.set(0, 0, z ? 0 : this.a, 0);
            }
        }
    }
}
