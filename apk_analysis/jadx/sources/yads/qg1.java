package yads;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes6.dex */
public final class qg1 implements View.OnLayoutChangeListener {
    public final /* synthetic */ cy1 b;
    public final /* synthetic */ RecyclerView.ItemAnimator c;

    public qg1(cy1 cy1Var, RecyclerView.ItemAnimator itemAnimator) {
        this.b = cy1Var;
        this.c = itemAnimator;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        view.removeOnLayoutChangeListener(this);
        if (this.b.getItemAnimator() == null) {
            this.b.setItemAnimator(this.c);
        }
    }
}
