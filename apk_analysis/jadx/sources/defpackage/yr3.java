package defpackage;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes5.dex */
public final class yr3 extends RecyclerView.ItemDecoration {
    public final int e = 2;
    public final int f = 16;

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        rect.getClass();
        view.getClass();
        recyclerView.getClass();
        state.getClass();
        Context context = view.getContext();
        context.getClass();
        float fB = pl2.b(context, this.f);
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        int i = this.e;
        int i2 = childAdapterPosition % i;
        float f = i;
        rect.left = (int) ((i2 * fB) / f);
        rect.right = (int) (fB - ((fB / f) * (i2 + 1)));
    }
}
