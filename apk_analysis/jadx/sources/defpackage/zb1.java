package defpackage;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.shared.infoBottomSheet.presentation.b;

/* JADX INFO: loaded from: classes5.dex */
public final class zb1 extends RecyclerView.ItemDecoration {
    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        m8 m8Var;
        sg.e(rect, view, recyclerView, state);
        super.getItemOffsets(rect, view, recyclerView, state);
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        pz3 pz3VarE = null;
        eu1 eu1Var = adapter instanceof eu1 ? (eu1) adapter : null;
        if (eu1Var != null && (m8Var = eu1Var.i) != null) {
            pz3VarE = m8Var.e(childAdapterPosition);
        }
        if (pz3VarE instanceof dc1) {
            rect.bottom = pl2.e(24);
            return;
        }
        if (pz3VarE instanceof yb1) {
            rect.top = pl2.e(8);
            return;
        }
        if (pz3VarE instanceof pb1) {
            rect.top = pl2.e(24);
            return;
        }
        if (pz3VarE instanceof sb1) {
            rect.top = pl2.e(16);
            return;
        }
        if (pz3VarE instanceof mb1) {
            rect.top = pl2.e(16);
        } else if (pz3VarE instanceof wm8) {
            rect.bottom = pl2.e(16);
        } else if (pz3VarE instanceof b) {
            rect.top = pl2.e(16);
        }
    }
}
