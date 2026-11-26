package yads;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class mg6 extends defpackage.qm3 implements defpackage.bm3 {
    public static final mg6 b = new mg6();

    public mg6() {
        super(2, RecyclerView.LayoutManager.class, "getDecoratedMeasuredWidth", "getDecoratedMeasuredWidth(Landroid/view/View;)I", 0);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return Integer.valueOf(((RecyclerView.LayoutManager) obj).getDecoratedMeasuredWidth((View) obj2));
    }
}
