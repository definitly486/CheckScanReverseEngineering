package defpackage;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes4.dex */
public final class tda extends RecyclerView.ItemDecoration {
    public final int e;

    public tda(int i) {
        this.e = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        int i = this.e;
        rect.bottom = i;
        rect.left = i;
        rect.right = i;
    }
}
