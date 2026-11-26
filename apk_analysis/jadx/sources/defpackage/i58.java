package defpackage;

import android.view.ViewGroup;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class i58 extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    public m8 i;
    public final ArrayList t = new ArrayList();

    public i58(il2... il2VarArr) {
        this.i = new m8(yr.h0(il2VarArr), kx2.b);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.i.b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i) {
        return this.i.c(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        viewHolder.getClass();
        m8 m8Var = this.i;
        m8Var.b(m8Var.c(i)).a(viewHolder, i, this.i.b);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        viewGroup.getClass();
        return this.i.b(i).f(viewGroup);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
        viewHolder.getClass();
        this.i.b(viewHolder.getItemViewType()).b(viewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
        viewHolder.getClass();
        this.i.b(viewHolder.getItemViewType()).d(viewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
        viewHolder.getClass();
        this.i.b(viewHolder.getItemViewType()).c(viewHolder);
    }

    public final void submitList(List<? extends pz3> list) {
        list.getClass();
        ArrayList arrayList = this.t;
        DiffUtil.DiffResult diffResultCalculateDiff = DiffUtil.calculateDiff(new dn2(list, arrayList));
        diffResultCalculateDiff.getClass();
        m8 m8VarA = m8.a(this.i, list);
        arrayList.clear();
        arrayList.addAll(list);
        this.i = m8VarA;
        diffResultCalculateDiff.dispatchUpdatesTo(this);
    }
}
