package yads;

import android.view.ViewGroup;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes6.dex */
public final class x66 extends ListAdapter {
    public final i76 a;

    public x66(i76 i76Var) {
        super(new v66());
        this.a = i76Var;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        ((w66) viewHolder).a((e76) getCurrentList().get(i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new w66(new n76(viewGroup.getContext()), this.a);
    }
}
