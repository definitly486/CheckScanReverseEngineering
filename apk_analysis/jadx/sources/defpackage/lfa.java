package defpackage;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes4.dex */
public final class lfa extends RecyclerView.ItemDecoration {
    public final int e;
    public final int f;

    public lfa(int i, int i2) {
        this.e = i;
        this.f = i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        rect.bottom = this.e;
        int i = childAdapterPosition % 2;
        int i2 = this.f;
        if (i == 0) {
            rect.right = i2;
        } else {
            rect.left = i2;
        }
    }
}
