package defpackage;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes5.dex */
public final class i16 extends RecyclerView.ItemDecoration {
    public final int e;

    public i16(int i) {
        this.e = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        sg.e(rect, view, recyclerView, state);
        super.getItemOffsets(rect, view, recyclerView, state);
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        int itemCount = (adapter != null ? adapter.getItemCount() : 0) - 1;
        int i = this.e;
        if (i > 0) {
            int i2 = i / 2;
            rect.top = i2;
            rect.bottom = childAdapterPosition < itemCount ? i2 : 0;
        } else {
            int i3 = i / 2;
            rect.top = i3;
            rect.bottom = childAdapterPosition < itemCount ? i3 : 0;
        }
    }
}
