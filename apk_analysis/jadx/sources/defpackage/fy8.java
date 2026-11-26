package defpackage;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes5.dex */
public final class fy8 extends RecyclerView.ItemDecoration {
    public final int e;
    public final boolean f;

    public fy8(int i, boolean z) {
        this.e = i;
        this.f = z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        sg.e(rect, view, recyclerView, state);
        super.getItemOffsets(rect, view, recyclerView, state);
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        if (this.f || childAdapterPosition != 0) {
            rect.top = pl2.e(this.e);
        }
    }

    public /* synthetic */ fy8() {
        this(8, true);
    }
}
