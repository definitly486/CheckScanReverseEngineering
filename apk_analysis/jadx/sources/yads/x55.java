package yads;

import androidx.recyclerview.widget.RecyclerView;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes6.dex */
public final class x55 extends RecyclerView.RecycledViewPool {
    public final w55 a;
    public final LinkedHashSet b = new LinkedHashSet();

    public x55(w55 w55Var) {
        this.a = w55Var;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.RecycledViewPool
    public final void clear() {
        super.clear();
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            di2.a(this.a, ((RecyclerView.ViewHolder) it.next()).itemView);
        }
        this.b.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.RecycledViewPool
    public final RecyclerView.ViewHolder getRecycledView(int i) {
        RecyclerView.ViewHolder recycledView = super.getRecycledView(i);
        if (recycledView == null) {
            return null;
        }
        this.b.remove(recycledView);
        return recycledView;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.RecycledViewPool
    public final void putRecycledView(RecyclerView.ViewHolder viewHolder) {
        super.putRecycledView(viewHolder);
        if (viewHolder != null) {
            this.b.add(viewHolder);
        }
    }
}
