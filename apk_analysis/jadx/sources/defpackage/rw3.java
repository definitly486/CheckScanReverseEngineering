package defpackage;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes5.dex */
public final class rw3 extends RecyclerView.ItemDecoration {
    public final int e;
    public final int f;
    public final int g;

    public rw3(int i, int i2, int i3) {
        this.e = i;
        this.f = i2;
        this.g = i3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        sg.e(rect, view, recyclerView, state);
        super.getItemOffsets(rect, view, recyclerView, state);
        int i = this.g;
        if (i != Integer.MIN_VALUE && recyclerView.getChildViewHolder(view).getItemViewType() == i) {
            rect.left = pl2.e(this.e);
            rect.right = pl2.e(this.f);
        }
    }
}
