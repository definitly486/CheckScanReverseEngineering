package defpackage;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.my.target.b;

/* JADX INFO: loaded from: classes4.dex */
public final class w2a extends RecyclerView.ItemDecoration {
    public final int e;

    public w2a(int i) {
        this.e = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        b bVar = (b) recyclerView.getAdapter();
        if (bVar == null) {
            return;
        }
        int size = bVar.i.size();
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        int i = this.e;
        if (childAdapterPosition == 0) {
            rect.right = i;
        } else if (recyclerView.getChildAdapterPosition(view) == size - 1) {
            rect.left = i;
        } else {
            rect.right = i;
            rect.left = i;
        }
    }
}
