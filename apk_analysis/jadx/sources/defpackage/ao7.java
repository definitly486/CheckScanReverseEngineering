package defpackage;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.products.presentation.selections.view.SelectionsFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class ao7 extends RecyclerView.ItemDecoration {
    public final /* synthetic */ SelectionsFragment e;

    public ao7(SelectionsFragment selectionsFragment) {
        this.e = selectionsFragment;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        m8 m8Var;
        sg.e(rect, view, recyclerView, state);
        super.getItemOffsets(rect, view, recyclerView, state);
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        eu1 eu1Var = this.e.h;
        pz3 pz3VarF = (eu1Var == null || (m8Var = eu1Var.i) == null) ? null : m8Var.f(childAdapterPosition);
        if (pz3VarF instanceof cn) {
            rect.set(pl2.e(16), pl2.e(8), pl2.e(16), pl2.e(16));
        } else if (pz3VarF instanceof ka3) {
            rect.left = pl2.e(16);
            rect.right = pl2.e(16);
        }
    }
}
