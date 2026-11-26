package defpackage;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.presentation.balance.promocodes.view.SelectPromocodeFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class im7 extends RecyclerView.ItemDecoration {
    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        sg.e(rect, view, recyclerView, state);
        super.getItemOffsets(rect, view, recyclerView, state);
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        y74 y74Var = SelectPromocodeFragment.p;
        int i = y74Var.b;
        if (childAdapterPosition > y74Var.c || i > childAdapterPosition) {
            rect.top = pl2.e(16);
        }
        rect.left = pl2.e(8);
        rect.right = pl2.e(8);
    }
}
