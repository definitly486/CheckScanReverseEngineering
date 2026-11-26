package yads;

import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class pg1 extends e71 {
    public final tt j;
    public final w41 k;
    public final qh2 l;
    public final WeakHashMap m;
    public long n;

    public pg1(List list, tt ttVar, w41 w41Var, qh2 qh2Var, n32 n32Var) {
        super(ttVar, n32Var, list);
        this.j = ttVar;
        this.k = w41Var;
        this.l = qh2Var;
        this.m = new WeakHashMap();
        setHasStableIds(true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final long getItemId(int i) {
        cn1 cn1Var = (cn1) d().get(i);
        Long l = (Long) this.m.get(cn1Var);
        if (l != null) {
            return l.longValue();
        }
        long j = this.n;
        this.n = 1 + j;
        this.m.put(cn1Var, Long.valueOf(j));
        return j;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ch1(this.j, new ug1(this.j.a.l), this.k, this.l);
    }
}
