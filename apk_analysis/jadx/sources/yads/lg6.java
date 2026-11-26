package yads;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class lg6 extends defpackage.qm3 implements defpackage.bm3 {
    public static final lg6 b = new lg6();

    public lg6() {
        super(2, RecyclerView.LayoutManager.class, "getDecoratedMeasuredHeight", "getDecoratedMeasuredHeight(Landroid/view/View;)I", 0);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return Integer.valueOf(((RecyclerView.LayoutManager) obj).getDecoratedMeasuredHeight((View) obj2));
    }
}
