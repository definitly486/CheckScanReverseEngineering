package defpackage;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes5.dex */
public final class c58 extends RecyclerView.ItemDecoration {
    public final int e;

    public c58(int i) {
        this.e = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        sg.e(rect, view, recyclerView, state);
        super.getItemOffsets(rect, view, recyclerView, state);
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        if (adapter != null) {
            if (recyclerView.getChildAdapterPosition(view) == adapter.getItemCount() - 1) {
                return;
            }
        }
        Context context = view.getContext();
        context.getClass();
        rect.bottom = (int) pl2.b(context, this.e);
    }
}
