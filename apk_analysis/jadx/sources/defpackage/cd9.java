package defpackage;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class cd9 extends RecyclerView.ItemDecoration {
    public final List<a> e;

    public static final class a {
        public final int a;
        public final int b;

        public a(int i, int i2) {
            this.a = i;
            this.b = i2;
        }
    }

    public cd9(List<a> list) {
        this.e = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        sg.e(rect, view, recyclerView, state);
        super.getItemOffsets(rect, view, recyclerView, state);
        int itemViewType = recyclerView.getChildViewHolder(view).getItemViewType();
        List<a> list = this.e;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((a) obj).b == itemViewType) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            rect.top = ((a) it.next()).a;
        }
    }
}
