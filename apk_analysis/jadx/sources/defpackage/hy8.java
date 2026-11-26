package defpackage;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class hy8 extends RecyclerView.ItemDecoration {
    public final int e;
    public final List<Integer> f;

    public hy8(int i, List<Integer> list) {
        this.e = i;
        this.f = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        sg.e(rect, view, recyclerView, state);
        super.getItemOffsets(rect, view, recyclerView, state);
        if (this.f.contains(Integer.valueOf(recyclerView.getChildViewHolder(view).getItemViewType()))) {
            return;
        }
        rect.top = this.e;
    }
}
