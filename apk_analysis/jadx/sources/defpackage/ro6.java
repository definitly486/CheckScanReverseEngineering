package defpackage;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.presentation.balance.promoSelectCard.view.PromoSelectCardFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class ro6 extends RecyclerView.ItemDecoration {
    public final /* synthetic */ PromoSelectCardFragment e;

    public ro6(PromoSelectCardFragment promoSelectCardFragment) {
        this.e = promoSelectCardFragment;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        int iE;
        m8 m8Var;
        sg.e(rect, view, recyclerView, state);
        super.getItemOffsets(rect, view, recyclerView, state);
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        if (childAdapterPosition == 0) {
            iE = pl2.e(8);
        } else {
            eu1 eu1Var = this.e.r;
            iE = ((eu1Var == null || (m8Var = eu1Var.i) == null) ? null : m8Var.f(childAdapterPosition)) instanceof qp6 ? pl2.e(32) : pl2.e(16);
        }
        rect.top = iE;
        rect.left = pl2.e(16);
        rect.right = pl2.e(16);
    }
}
