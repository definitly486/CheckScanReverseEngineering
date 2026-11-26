package defpackage;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes5.dex */
public final class us4 extends RecyclerView.ItemDecoration {
    public final /* synthetic */ RecyclerView e;

    public us4(RecyclerView recyclerView) {
        this.e = recyclerView;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        sg.e(rect, view, recyclerView, state);
        super.getItemOffsets(rect, view, recyclerView, state);
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        RecyclerView.Adapter adapter = this.e.getAdapter();
        i58 i58Var = adapter instanceof i58 ? (i58) adapter : null;
        pz3 pz3VarE = i58Var != null ? i58Var.i.e(childAdapterPosition) : null;
        if (!(pz3VarE instanceof qs4)) {
            if (pz3VarE instanceof ns4) {
                rect.top = pl2.e(16);
                return;
            }
            return;
        }
        boolean z = childAdapterPosition % 2 == 0;
        if (childAdapterPosition > 1) {
            rect.top = pl2.e(12);
        }
        if (z) {
            rect.right = pl2.e(6);
        } else {
            rect.left = pl2.e(6);
        }
    }
}
