package defpackage;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.my.target.o2;

/* JADX INFO: loaded from: classes4.dex */
public final class i4a extends RecyclerView.ItemDecoration {
    public final int e;
    public final int f;

    public i4a(int i, int i2) {
        this.e = i;
        this.f = i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        o2 o2Var = (o2) recyclerView.getAdapter();
        if (o2Var == null) {
            return;
        }
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        int i = this.f;
        if (childAdapterPosition == 0) {
            rect.left = i;
        }
        if (childAdapterPosition == o2Var.i.size() - 1) {
            rect.right = i;
        } else {
            rect.right = this.e;
        }
    }
}
