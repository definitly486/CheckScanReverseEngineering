package defpackage;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.presentation.balance.withdrawalMethods.view.WithdrawalMethodsFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class sj9 extends RecyclerView.ItemDecoration {
    public final /* synthetic */ WithdrawalMethodsFragment e;

    public sj9(WithdrawalMethodsFragment withdrawalMethodsFragment) {
        this.e = withdrawalMethodsFragment;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        m8 m8Var;
        sg.e(rect, view, recyclerView, state);
        super.getItemOffsets(rect, view, recyclerView, state);
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        eu1 eu1Var = this.e.p;
        pz3 pz3VarF = (eu1Var == null || (m8Var = eu1Var.i) == null) ? null : m8Var.f(childAdapterPosition);
        if (!(pz3VarF instanceof nj9) && !(pz3VarF instanceof oj9)) {
            rect.right = pl2.e(16);
            rect.left = pl2.e(16);
        }
        if (childAdapterPosition != 0) {
            rect.bottom = pl2.e(16);
        } else {
            rect.top = pl2.e(16);
            rect.bottom = pl2.e(16);
        }
    }
}
