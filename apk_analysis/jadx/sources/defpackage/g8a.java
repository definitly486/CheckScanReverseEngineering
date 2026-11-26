package defpackage;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes4.dex */
public final class g8a extends RecyclerView.ItemDecoration {
    public final int e;

    public g8a(int i) {
        this.e = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        f2a f2aVar = (f2a) recyclerView.getAdapter();
        if (f2aVar == null) {
            return;
        }
        int size = f2aVar.i.size();
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        int i = this.e;
        if (childAdapterPosition == 0) {
            rect.left = i;
            rect.right = i / 2;
        } else if (recyclerView.getChildAdapterPosition(view) == size - 1) {
            rect.right = i;
            rect.left = i / 2;
        } else {
            int i2 = i / 2;
            rect.right = i2;
            rect.left = i2;
        }
    }
}
