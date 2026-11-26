package defpackage;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes5.dex */
public final class gy8 extends RecyclerView.ItemDecoration {
    public final int e = 8;
    public final int[] f;

    public gy8(int[] iArr) {
        this.f = iArr;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        int iIntValue;
        sg.e(rect, view, recyclerView, state);
        super.getItemOffsets(rect, view, recyclerView, state);
        int[] iArr = this.f;
        for (int i : iArr) {
            if (recyclerView.getChildViewHolder(view).getItemViewType() == i) {
                RecyclerView.Adapter adapter = recyclerView.getAdapter();
                if (adapter == null) {
                    return;
                }
                int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
                Integer numValueOf = Integer.valueOf(childAdapterPosition);
                if (childAdapterPosition == -1) {
                    numValueOf = null;
                }
                if (numValueOf == null || (iIntValue = numValueOf.intValue()) == 0) {
                    return;
                }
                for (int i2 : iArr) {
                    if (adapter.getItemViewType(iIntValue - 1) == i2) {
                        rect.top = pl2.e(this.e);
                        return;
                    }
                }
                return;
            }
        }
    }
}
