package defpackage;

import android.graphics.Rect;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.products.presentation.shop.view.ShopFragment;

/* JADX INFO: loaded from: classes4.dex */
public abstract class bw3 extends RecyclerView.OnScrollListener {
    public boolean h;

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public final void onScrolled(RecyclerView recyclerView, int i, int i2) {
        View viewFindViewByPosition;
        recyclerView.getClass();
        super.onScrolled(recyclerView, i, i2);
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
        if (linearLayoutManager == null || (viewFindViewByPosition = linearLayoutManager.findViewByPosition(0)) == null) {
            return;
        }
        Rect rect = new Rect();
        boolean z = (!viewFindViewByPosition.getLocalVisibleRect(rect) ? 0.0f : ((float) rect.height()) / ((float) viewFindViewByPosition.getHeight())) >= 0.5f;
        if (z && !this.h) {
            this.h = true;
            TextView textView = ShopFragment.this.n().toolbar.tvTitle;
            textView.getClass();
            textView.setVisibility(8);
            return;
        }
        if (z || !this.h) {
            return;
        }
        this.h = false;
        TextView textView2 = ShopFragment.this.n().toolbar.tvTitle;
        textView2.getClass();
        textView2.setVisibility(0);
    }
}
