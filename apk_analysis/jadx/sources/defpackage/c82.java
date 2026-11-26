package defpackage;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.presentation.tasks.daily.view.DailyTaskFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class c82 extends RecyclerView.ItemDecoration {
    public final /* synthetic */ DailyTaskFragment e;

    public c82(DailyTaskFragment dailyTaskFragment) {
        this.e = dailyTaskFragment;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        m8 m8Var;
        sg.e(rect, view, recyclerView, state);
        super.getItemOffsets(rect, view, recyclerView, state);
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        eu1 eu1Var = this.e.h;
        pz3 pz3VarF = (eu1Var == null || (m8Var = eu1Var.i) == null) ? null : m8Var.f(childAdapterPosition);
        if (pz3VarF instanceof b82 ? true : pz3VarF instanceof a82) {
            rect.bottom = pl2.e(16);
            return;
        }
        if (pz3VarF instanceof m82 ? true : pz3VarF instanceof j82) {
            RecyclerView.Adapter adapter = recyclerView.getAdapter();
            if (adapter == null || childAdapterPosition != adapter.getItemCount() - 1) {
                rect.right = pl2.e(8);
            }
            rect.bottom = pl2.e(8);
        }
    }
}
