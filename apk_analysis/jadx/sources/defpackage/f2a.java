package defpackage;

import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.my.target.f1;
import com.my.target.h6;
import com.my.target.w1;
import com.my.target.xj;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class f2a extends RecyclerView.Adapter {
    public List i = new ArrayList();
    public final w1.a t;

    public static class a extends RecyclerView.ViewHolder {
        public final h6 l;

        public a(h6 h6Var) {
            super(h6Var);
            this.l = h6Var;
        }
    }

    public static class b extends RecyclerView.ViewHolder {
        public final xj l;

        public b(xj xjVar) {
            super(xjVar);
            this.l = xjVar;
        }
    }

    public f2a(w1.a aVar) {
        this.t = aVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.i.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i) {
        return ((v2a) this.i.get(i)).a.Z != null ? 1 : 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        v2a v2aVar = (v2a) this.i.get(i);
        if (viewHolder instanceof b) {
            ((b) viewHolder).l.setBannerData(v2aVar);
        } else {
            ((a) viewHolder).l.setBannerData(v2aVar);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        f1 f1Var = new f1(this.t);
        return i == 1 ? new b(new xj(viewGroup.getContext(), f1Var)) : new a(new h6(viewGroup.getContext(), f1Var));
    }
}
