package defpackage;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class sw3 extends RecyclerView.ItemDecoration {
    public final int e;
    public final int f;
    public final List<Integer> g;

    public sw3(int i, List<Integer> list) {
        this.e = i;
        this.f = i;
        this.g = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        sg.e(rect, view, recyclerView, state);
        super.getItemOffsets(rect, view, recyclerView, state);
        if (this.g.contains(Integer.valueOf(recyclerView.getChildViewHolder(view).getItemViewType()))) {
            rect.left = this.e;
            rect.right = this.f;
        }
    }
}
