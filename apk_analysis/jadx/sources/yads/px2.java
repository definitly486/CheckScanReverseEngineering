package yads;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes6.dex */
public final class px2 extends RecyclerView.ItemDecoration {
    public final int a;
    public final int b;
    public final int c;
    public final int d;

    public px2(ts1 ts1Var, sx2 sx2Var) {
        Integer num = ts1Var.i;
        this.a = num != null ? num.intValue() : defpackage.w65.b(sx2Var.a());
        Integer num2 = ts1Var.j;
        this.b = num2 != null ? num2.intValue() : defpackage.w65.b(sx2Var.a());
        Integer num3 = ts1Var.k;
        this.c = num3 != null ? num3.intValue() : defpackage.w65.b(sx2Var.a());
        Integer num4 = ts1Var.l;
        this.d = num4 != null ? num4.intValue() : defpackage.w65.b(sx2Var.a());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        rect.set(this.a, this.b, this.c, this.d);
    }
}
