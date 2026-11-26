package defpackage;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes5.dex */
public final class qw3 extends RecyclerView.ItemDecoration {
    public final int e;
    public final int f;
    public final int g = -1;

    public qw3(int i, int i2) {
        this.e = i;
        this.f = i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        sg.e(rect, view, recyclerView, state);
        super.getItemOffsets(rect, view, recyclerView, state);
        if (recyclerView.getChildViewHolder(view).getItemViewType() == this.g) {
            return;
        }
        rect.left = pl2.e(this.e);
        rect.right = pl2.e(this.f);
    }
}
