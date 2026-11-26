package yads;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes6.dex */
public final class fl6 extends ys1 {
    public final RecyclerView d;
    public final boolean e;

    public fl6(RecyclerView recyclerView, boolean z, int i, ts1 ts1Var, rr1 rr1Var) {
        super(i, ts1Var, rr1Var);
        this.d = recyclerView;
        this.e = z;
    }

    @Override // yads.ys1
    public final Float a(int i) {
        View viewFindViewByPosition;
        RecyclerView.LayoutManager layoutManager = this.d.getLayoutManager();
        if (layoutManager == null || (viewFindViewByPosition = layoutManager.findViewByPosition(i)) == null) {
            return null;
        }
        return Float.valueOf(this.e ? viewFindViewByPosition.getWidth() : viewFindViewByPosition.getHeight());
    }
}
